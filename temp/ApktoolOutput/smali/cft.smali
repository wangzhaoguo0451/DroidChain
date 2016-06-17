.class public final Lcft;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/pboctransaction/c;


# instance fields
.field private a:Lcom/unionpay/pboctransaction/sdapdu/NativeSDWriter;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcft;->a:Lcom/unionpay/pboctransaction/sdapdu/NativeSDWriter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcft;->b:Z

    return-void
.end method

.method private static b(Lcfo;)Ljava/util/ArrayList;
    .locals 14
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

    const/16 v13, 0x28

    const/4 v3, 0x1

    const/high16 v2, -0x8000

    const/4 v1, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcfo;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-byte v0, p0, Lcfo;->b:B

    iput-byte v0, p0, Lcfo;->a:B

    const-string v0, "80F2000102"

    invoke-static {v0}, Lj;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcfo;->a([B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lj;->a(Ljava/lang/String;)[B

    move-result-object v0

    aget-byte v4, v0, v10

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int v11, v4, v0

    move v4, v2

    move v6, v10

    move v5, v10

    :goto_1
    const/16 v0, 0xa

    if-ge v5, v0, :cond_2

    and-int v0, v4, v11

    if-nez v0, :cond_6

    add-int/lit8 v0, v6, 0x1

    :goto_2
    ushr-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    move v6, v0

    goto :goto_1

    :cond_2
    if-gtz v6, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v2

    move v9, v3

    :goto_3
    if-gt v9, v6, :cond_5

    const/16 v0, 0xb

    if-ge v9, v0, :cond_5

    and-int v0, v11, v8

    if-nez v0, :cond_4

    invoke-static {}, Lccv;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcfo;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v1, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-static {v0}, Lj;->a(Ljava/lang/String;)[B

    move-result-object v2

    const-string v4, "gbk"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    const/16 v0, 0x3c

    invoke-virtual {v1, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcfp;

    const/16 v1, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12}, Lj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcfp;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v1, v9, 0x1

    ushr-int/lit8 v0, v8, 0x1

    move v8, v0

    move v9, v1

    goto :goto_3

    :catch_0
    move-exception v2

    move-object v3, v0

    goto :goto_4

    :cond_5
    move-object v0, v7

    goto/16 :goto_0

    :cond_6
    move v0, v6

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcfo;)Ljava/util/ArrayList;
    .locals 9
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

    const/4 v5, 0x1

    iget-boolean v1, p0, Lcft;->b:Z

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "A0000003330101"

    new-instance v1, Lcom/unionpay/pboctransaction/AppIdentification;

    const-string v3, "1.0"

    invoke-direct {v1, v2, v3}, Lcom/unionpay/pboctransaction/AppIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcfo;->a(Lcom/unionpay/pboctransaction/AppIdentification;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lcfp;

    const/16 v1, 0x8

    const-string v3, ""

    invoke-static {v8}, Lj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcfp;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v7

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-static {p1}, Lcft;->b(Lcfo;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    move-object v0, v6

    goto :goto_0
.end method

.method public final a()V
    .locals 5

    new-instance v0, Lcom/unionpay/pboctransaction/sdapdu/NativeSDWriter;

    invoke-direct {v0}, Lcom/unionpay/pboctransaction/sdapdu/NativeSDWriter;-><init>()V

    iput-object v0, p0, Lcft;->a:Lcom/unionpay/pboctransaction/sdapdu/NativeSDWriter;

    invoke-static {}, Lcfu;->a()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcfu;->a:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcft;->a:Lcom/unionpay/pboctransaction/sdapdu/NativeSDWriter;

    invoke-virtual {v0, v1}, Lcom/unionpay/pboctransaction/sdapdu/NativeSDWriter;->openSD(Ljava/util/ArrayList;)Z

    move-result v0

    iput-boolean v0, p0, Lcft;->b:Z

    return-void
.end method

.method public final a([BI)[B
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcft;->a:Lcom/unionpay/pboctransaction/sdapdu/NativeSDWriter;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcft;->a:Lcom/unionpay/pboctransaction/sdapdu/NativeSDWriter;

    array-length v1, p1

    invoke-static {p1, v1}, Lj;->a([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/pboctransaction/sdapdu/NativeSDWriter;->writeApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lj;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcft;->a:Lcom/unionpay/pboctransaction/sdapdu/NativeSDWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcft;->a:Lcom/unionpay/pboctransaction/sdapdu/NativeSDWriter;

    invoke-virtual {v0}, Lcom/unionpay/pboctransaction/sdapdu/NativeSDWriter;->closeSD()Z

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
