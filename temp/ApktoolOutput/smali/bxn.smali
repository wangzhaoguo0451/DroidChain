.class public final Lbxn;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field public final a:Lbxj;

.field public final b:Lcom/squareup/okhttp/Protocol;

.field public final c:I

.field final d:Ljava/lang/String;

.field public final e:Lbxe;

.field public final f:Lbxf;

.field public final g:Lbxp;

.field h:Lbxn;

.field i:Lbxn;

.field final j:Lbxn;

.field private volatile k:Lbwq;


# direct methods
.method private constructor <init>(Lbxo;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-object v0, p1, Lbxo;->a:Lbxj;

    iput-object v0, p0, Lbxn;->a:Lbxj;

    .line 52
    iget-object v0, p1, Lbxo;->b:Lcom/squareup/okhttp/Protocol;

    iput-object v0, p0, Lbxn;->b:Lcom/squareup/okhttp/Protocol;

    .line 53
    iget v0, p1, Lbxo;->c:I

    iput v0, p0, Lbxn;->c:I

    .line 54
    iget-object v0, p1, Lbxo;->d:Ljava/lang/String;

    iput-object v0, p0, Lbxn;->d:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lbxo;->e:Lbxe;

    iput-object v0, p0, Lbxn;->e:Lbxe;

    .line 56
    iget-object v0, p1, Lbxo;->f:Lbxg;

    invoke-virtual {v0}, Lbxg;->a()Lbxf;

    move-result-object v0

    iput-object v0, p0, Lbxn;->f:Lbxf;

    .line 57
    iget-object v0, p1, Lbxo;->g:Lbxp;

    iput-object v0, p0, Lbxn;->g:Lbxp;

    .line 58
    iget-object v0, p1, Lbxo;->h:Lbxn;

    iput-object v0, p0, Lbxn;->h:Lbxn;

    .line 59
    iget-object v0, p1, Lbxo;->i:Lbxn;

    iput-object v0, p0, Lbxn;->i:Lbxn;

    .line 60
    iget-object v0, p1, Lbxo;->j:Lbxn;

    iput-object v0, p0, Lbxn;->j:Lbxn;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lbxo;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lbxn;-><init>(Lbxo;)V

    return-void
.end method


# virtual methods
.method public final a()Lbxo;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lbxo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbxo;-><init>(Lbxn;B)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lbxn;->f:Lbxf;

    invoke-virtual {v0, p1}, Lbxf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbwx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget v0, p0, Lbxn;->c:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    .line 191
    const-string v0, "WWW-Authenticate"

    .line 197
    :goto_0
    iget-object v1, p0, Lbxn;->f:Lbxf;

    invoke-static {v1, v0}, Lbyt;->a(Lbxf;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    .line 192
    :cond_0
    iget v0, p0, Lbxn;->c:I

    const/16 v1, 0x197

    if-ne v0, v1, :cond_1

    .line 193
    const-string v0, "Proxy-Authenticate"

    goto :goto_0

    .line 195
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public final c()Lbwq;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lbxn;->k:Lbwq;

    .line 206
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbxn;->f:Lbxf;

    invoke-static {v0}, Lbwq;->a(Lbxf;)Lbwq;

    move-result-object v0

    iput-object v0, p0, Lbxn;->k:Lbwq;

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbxn;->b:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbxn;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbxn;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbxn;->a:Lbxj;

    .line 217
    iget-object v1, v1, Lbxj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
