#r "nuget:MegaApiClient/1.10.3"
using CG.Web.MegaApiClient;
using System.Text.Json;
using System.Text.Json.Serialization;

void DisplayNodesRecursive (IEnumerable<INode> nodes, INode parent, int level = 0) {
    IEnumerable<INode> children = nodes.Where(x => x.ParentId == parent.Id);
    foreach (INode child in children) {
        Console.WriteLine(child.Name);
        if (child.Type == NodeType.Directory) {
            DisplayNodesRecursive(nodes, child, level + 1);
        }
    }
}

string authjson = System.Environment.GetEnvironmentVariable("MEGA_AUTH");
var login = JsonSerializer.Deserialize<MegaApiClient.AuthInfos>(authjson);

MegaApiClient client = new MegaApiClient();
client.Login(login);


//IEnumerable<INode> nodes = client.GetNodes();
//INode node = nodes.Single(x => x.Type == NodeType.Root);
//client.UploadFile(@"log.txt", node);






IEnumerable<INode> nodes = client.GetNodes();

INode parent = nodes.Single(n => n.Type == NodeType.Root);
DisplayNodesRecursive(nodes, parent);

client.Logout();