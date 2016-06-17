.class public Lcom/tencent/mm/sdk/openapi/WXFileObject;
.super Ljava/lang/Object;

# interfaces
.implements Lcbw;


# instance fields
.field public fileData:[B

.field public filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXFileObject;->fileData:[B

    iput-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXFileObject;->filePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/sdk/openapi/WXFileObject;->filePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/sdk/openapi/WXFileObject;->fileData:[B

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 5

    const/high16 v4, 0xa0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXFileObject;->fileData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXFileObject;->fileData:[B

    array-length v1, v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXFileObject;->filePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXFileObject;->filePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "MicroMsg.SDK.WXFileObject"

    invoke-static {v1}, Lcby;->a(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXFileObject;->fileData:[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXFileObject;->fileData:[B

    array-length v1, v1

    if-le v1, v4, :cond_3

    const-string v1, "MicroMsg.SDK.WXFileObject"

    invoke-static {v1}, Lcby;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXFileObject;->filePath:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXFileObject;->filePath:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move v1, v0

    :goto_1
    if-le v1, v4, :cond_7

    const-string v1, "MicroMsg.SDK.WXFileObject"

    invoke-static {v1}, Lcby;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v0

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_1

    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "_wxfileobject_fileData"

    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXFileObject;->fileData:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "_wxfileobject_filePath"

    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXFileObject;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFileData([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/sdk/openapi/WXFileObject;->fileData:[B

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/sdk/openapi/WXFileObject;->filePath:Ljava/lang/String;

    return-void
.end method

.method public type()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "_wxfileobject_fileData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXFileObject;->fileData:[B

    const-string v0, "_wxfileobject_filePath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXFileObject;->filePath:Ljava/lang/String;

    return-void
.end method
