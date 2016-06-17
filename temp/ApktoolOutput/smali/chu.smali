.class public final Lchu;
.super Ljava/lang/Object;


# instance fields
.field public a:[B

.field public b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcht;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lchu;->c:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lchu;->b:Ljava/util/Vector;

    return-void
.end method

.method public static a(Ljava/io/DataInputStream;)Lchu;
    .locals 11

    const/16 v10, 0x3e8

    const/4 v4, 0x0

    const/4 v1, 0x0

    new-instance v0, Lchu;

    invoke-direct {v0}, Lchu;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v0, Lchu;->c:I

    iget v2, v0, Lchu;->c:I

    new-array v2, v2, [B

    iput-object v2, v0, Lchu;->a:[B

    iget-object v2, v0, Lchu;->a:[B

    invoke-virtual {p0, v2}, Ljava/io/DataInputStream;->read([B)I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    if-le v6, v10, :cond_0

    :goto_0
    return-object v1

    :cond_0
    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_5

    new-instance v2, Lcht;

    invoke-direct {v2}, Lcht;-><init>()V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    if-le v7, v10, :cond_3

    move-object v2, v1

    :cond_1
    if-eqz v2, :cond_2

    iget-object v3, v0, Lchu;->b:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_2
    if-ge v3, v7, :cond_1

    new-instance v8, Lchs;

    invoke-direct {v8}, Lchs;-><init>()V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v8, Lchs;->a:I

    iget v9, v8, Lchs;->a:I

    new-array v9, v9, [B

    iput-object v9, v8, Lchs;->b:[B

    iget-object v9, v8, Lchs;->b:[B

    invoke-virtual {p0, v9}, Ljava/io/DataInputStream;->read([B)I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v8, Lchs;->c:I

    iget v9, v8, Lchs;->c:I

    new-array v9, v9, [B

    iput-object v9, v8, Lchs;->d:[B

    iget-object v9, v8, Lchs;->d:[B

    invoke-virtual {p0, v9}, Ljava/io/DataInputStream;->read([B)I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v8, Lchs;->e:I

    iget v9, v8, Lchs;->e:I

    if-lez v9, :cond_4

    iget v9, v8, Lchs;->e:I

    new-array v9, v9, [B

    iput-object v9, v8, Lchs;->f:[B

    iget-object v9, v8, Lchs;->f:[B

    invoke-virtual {p0, v9}, Ljava/io/DataInputStream;->read([B)I

    :cond_4
    iget-object v9, v2, Lcht;->a:Ljava/util/Vector;

    invoke-virtual {v9, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v1

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    const-string v2, ""

    const-string v1, ""

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lchu;->a:[B

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tablenamesize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lchu;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tablename = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "rowcount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lchu;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_1
    iget-object v2, p0, Lchu;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "rowindex = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lchu;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcht;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcht;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :cond_0
    return-object v0
.end method
