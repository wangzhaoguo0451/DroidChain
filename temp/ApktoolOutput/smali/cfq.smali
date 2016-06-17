.class public final Lcfq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/pboctransaction/c;


# instance fields
.field public a:Lcom/unionpay/pboctransaction/b;

.field public b:Landroid/content/Context;

.field public c:Landroid/content/ServiceConnection;

.field private d:Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

.field private e:Z

.field private f:Lcom/unionpay/mobile/tsm/connect/IInitCallback$Stub;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcfq;->d:Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcfq;->e:Z

    iput-object v1, p0, Lcfq;->b:Landroid/content/Context;

    new-instance v0, Lcfr;

    invoke-direct {v0, p0}, Lcfr;-><init>(Lcfq;)V

    iput-object v0, p0, Lcfq;->c:Landroid/content/ServiceConnection;

    new-instance v0, Lcfs;

    invoke-direct {v0, p0}, Lcfs;-><init>(Lcfq;)V

    iput-object v0, p0, Lcfq;->f:Lcom/unionpay/mobile/tsm/connect/IInitCallback$Stub;

    iput-boolean p1, p0, Lcfq;->e:Z

    return-void
.end method

.method static synthetic a(Lcfq;)Lcom/unionpay/mobile/tsm/connect/IInitCallback$Stub;
    .locals 1

    iget-object v0, p0, Lcfq;->f:Lcom/unionpay/mobile/tsm/connect/IInitCallback$Stub;

    return-object v0
.end method

.method static synthetic a(Lcfq;Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;)Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;
    .locals 0

    iput-object p1, p0, Lcfq;->d:Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    return-object p1
.end method

.method static synthetic b(Lcfq;)Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;
    .locals 1

    iget-object v0, p0, Lcfq;->d:Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    return-object v0
.end method


# virtual methods
.method public final a(Lcfo;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unionpay/pboctransaction/model/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcfq;->e:Z

    if-eqz v1, :cond_2

    const-string v1, "D15600010100016111000000B0004101"

    :goto_0
    iget-object v2, p0, Lcfq;->d:Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "00a4040010"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;->writeApdu(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "9000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcfq;->d:Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    const-string v2, "80CA2F0000"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;->writeApdu(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lj;->b(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/unionpay/pboctransaction/AppIdentification;

    const-string v0, "06"

    invoke-virtual {v2}, Lcom/unionpay/pboctransaction/AppIdentification;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Lcfo;->a(Lcom/unionpay/pboctransaction/AppIdentification;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lcfp;

    const/4 v1, 0x4

    iget-object v2, v2, Lcom/unionpay/pboctransaction/AppIdentification;->a:Ljava/lang/String;

    const-string v3, ""

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcfp;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :try_start_1
    const-string v1, "D15600010100016111000000B0004001"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v6

    :cond_4
    return-object v0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a([BI)[B
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p1

    invoke-static {p1, v1}, Lj;->a([BI)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcfq;->d:Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    invoke-interface {v2, v1, p2}, Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;->writeApdu(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lj;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcfq;->d:Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcfq;->d:Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;->closeChannel(I)V

    iget-object v0, p0, Lcfq;->d:Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;->closeChannel(I)V

    iget-object v0, p0, Lcfq;->d:Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;->closeChannel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
