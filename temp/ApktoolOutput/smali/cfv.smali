.class public final Lcfv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/pboctransaction/c;
.implements Lorg/simalliance/openmobileapi/SEService$CallBack;


# static fields
.field private static e:Lcfv;


# instance fields
.field public a:Lorg/simalliance/openmobileapi/SEService;

.field public b:Lcom/unionpay/pboctransaction/b;

.field public c:Landroid/os/Handler;

.field private d:[Lorg/simalliance/openmobileapi/Channel;

.field private f:Landroid/os/Handler$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcfv;

    invoke-direct {v0}, Lcfv;-><init>()V

    sput-object v0, Lcfv;->e:Lcfv;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcfv;->a:Lorg/simalliance/openmobileapi/SEService;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/simalliance/openmobileapi/Channel;

    iput-object v0, p0, Lcfv;->d:[Lorg/simalliance/openmobileapi/Channel;

    new-instance v0, Lcfw;

    invoke-direct {v0, p0}, Lcfw;-><init>(Lcfv;)V

    iput-object v0, p0, Lcfv;->f:Landroid/os/Handler$Callback;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcfv;->f:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcfv;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcfv;)Lcom/unionpay/pboctransaction/b;
    .locals 1

    iget-object v0, p0, Lcfv;->b:Lcom/unionpay/pboctransaction/b;

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_0
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcfv;->d:[Lorg/simalliance/openmobileapi/Channel;

    array-length v3, v3

    if-le p2, v3, :cond_2

    move p2, v1

    :cond_2
    const-string v3, "00A40400"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "01A40400"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "02A40400"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    invoke-direct {p0, p2}, Lcfv;->a(I)V

    const/16 v0, 0x8

    const/16 v1, 0x9

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    const/16 v1, 0x9

    const/16 v3, 0xa

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xa

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcfv;->b([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/unionpay/pboctransaction/simapdu/a$a;

    invoke-direct {v0}, Lcom/unionpay/pboctransaction/simapdu/a$a;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_1
    invoke-static {v2}, Lj;->a(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcfv;->d:[Lorg/simalliance/openmobileapi/Channel;

    aget-object v2, v2, p2

    invoke-virtual {v2, v1}, Lorg/simalliance/openmobileapi/Channel;->transmit([B)[B

    move-result-object v1

    invoke-static {v1}, Lj;->a([B)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/unionpay/pboctransaction/simapdu/a$a;

    invoke-direct {v0}, Lcom/unionpay/pboctransaction/simapdu/a$a;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcfv;->d:[Lorg/simalliance/openmobileapi/Channel;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcfv;->d:[Lorg/simalliance/openmobileapi/Channel;

    array-length v0, v0

    if-gt p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcfv;->d:[Lorg/simalliance/openmobileapi/Channel;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Channel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcfv;->d:[Lorg/simalliance/openmobileapi/Channel;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcfv;)Lcom/unionpay/pboctransaction/b;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcfv;->b:Lcom/unionpay/pboctransaction/b;

    return-object v0
.end method

.method private b([BI)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcfv;->a:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->getReaders()[Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->openSession()Lorg/simalliance/openmobileapi/Session;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/simalliance/openmobileapi/Session;->openLogicalChannel([B)Lorg/simalliance/openmobileapi/Channel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcfv;->d:[Lorg/simalliance/openmobileapi/Channel;

    aput-object v0, v1, p2

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Channel;->getSelectResponse()[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v1}, Lj;->a([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic c(Lcfv;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcfv;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized d()Lcfv;
    .locals 2

    const-class v0, Lcfv;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcfv;->e:Lcfv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
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

    const/16 v1, 0x10

    const/4 v5, 0x1

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    const-string v3, "A0000003330101"

    invoke-virtual {p1, v3}, Lcfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v4, Lcom/unionpay/pboctransaction/AppIdentification;

    invoke-direct {v4, v3, v0}, Lcom/unionpay/pboctransaction/AppIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/unionpay/pboctransaction/AppIdentification;

    const-string v0, "06"

    invoke-virtual {v2}, Lcom/unionpay/pboctransaction/AppIdentification;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v2}, Lcfo;->a(Lcom/unionpay/pboctransaction/AppIdentification;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lcfp;

    iget-object v2, v2, Lcom/unionpay/pboctransaction/AppIdentification;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-direct/range {v0 .. v5}, Lcfp;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v6

    goto :goto_0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a([BI)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-static {p1, v1}, Lj;->a([BI)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcfv;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj;->a(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/unionpay/pboctransaction/simapdu/a$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcfv;->c()V

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcfv;->d:[Lorg/simalliance/openmobileapi/Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcfv;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final serviceConnected(Lorg/simalliance/openmobileapi/SEService;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mSEService:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcfv;->a:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mSEService.isConnected:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcfv;->a:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcfv;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
