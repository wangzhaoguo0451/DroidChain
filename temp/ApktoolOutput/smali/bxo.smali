.class public final Lbxo;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field public a:Lbxj;

.field public b:Lcom/squareup/okhttp/Protocol;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lbxe;

.field f:Lbxg;

.field public g:Lbxp;

.field h:Lbxn;

.field i:Lbxn;

.field j:Lbxn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lbxo;->c:I

    .line 234
    new-instance v0, Lbxg;

    invoke-direct {v0}, Lbxg;-><init>()V

    iput-object v0, p0, Lbxo;->f:Lbxg;

    .line 235
    return-void
.end method

.method private constructor <init>(Lbxn;)V
    .locals 1
    .parameter

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lbxo;->c:I

    .line 238
    iget-object v0, p1, Lbxn;->a:Lbxj;

    iput-object v0, p0, Lbxo;->a:Lbxj;

    .line 239
    iget-object v0, p1, Lbxn;->b:Lcom/squareup/okhttp/Protocol;

    iput-object v0, p0, Lbxo;->b:Lcom/squareup/okhttp/Protocol;

    .line 240
    iget v0, p1, Lbxn;->c:I

    iput v0, p0, Lbxo;->c:I

    .line 241
    iget-object v0, p1, Lbxn;->d:Ljava/lang/String;

    iput-object v0, p0, Lbxo;->d:Ljava/lang/String;

    .line 242
    iget-object v0, p1, Lbxn;->e:Lbxe;

    iput-object v0, p0, Lbxo;->e:Lbxe;

    .line 243
    iget-object v0, p1, Lbxn;->f:Lbxf;

    invoke-virtual {v0}, Lbxf;->a()Lbxg;

    move-result-object v0

    iput-object v0, p0, Lbxo;->f:Lbxg;

    .line 244
    iget-object v0, p1, Lbxn;->g:Lbxp;

    iput-object v0, p0, Lbxo;->g:Lbxp;

    .line 245
    iget-object v0, p1, Lbxn;->h:Lbxn;

    iput-object v0, p0, Lbxo;->h:Lbxn;

    .line 246
    iget-object v0, p1, Lbxn;->i:Lbxn;

    iput-object v0, p0, Lbxo;->i:Lbxn;

    .line 247
    iget-object v0, p1, Lbxn;->j:Lbxn;

    iput-object v0, p0, Lbxo;->j:Lbxn;

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Lbxn;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lbxo;-><init>(Lbxn;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Lbxn;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 322
    iget-object v0, p1, Lbxn;->g:Lbxp;

    if-eqz v0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    iget-object v0, p1, Lbxn;->h:Lbxn;

    if-eqz v0, :cond_1

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_1
    iget-object v0, p1, Lbxn;->i:Lbxn;

    if-eqz v0, :cond_2

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_2
    iget-object v0, p1, Lbxn;->j:Lbxn;

    if-eqz v0, :cond_3

    .line 329
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Lbxn;
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lbxo;->a:Lbxj;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    iget-object v0, p0, Lbxo;->b:Lcom/squareup/okhttp/Protocol;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_1
    iget v0, p0, Lbxo;->c:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lbxo;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_2
    new-instance v0, Lbxn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbxn;-><init>(Lbxo;B)V

    return-object v0
.end method

.method public final a(Lbxf;)Lbxo;
    .locals 1
    .parameter

    .prologue
    .line 300
    invoke-virtual {p1}, Lbxf;->a()Lbxg;

    move-result-object v0

    iput-object v0, p0, Lbxo;->f:Lbxg;

    .line 301
    return-object p0
.end method

.method public final a(Lbxn;)Lbxo;
    .locals 1
    .parameter

    .prologue
    .line 310
    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-static {v0, p1}, Lbxo;->a(Ljava/lang/String;Lbxn;)V

    .line 311
    :cond_0
    iput-object p1, p0, Lbxo;->h:Lbxn;

    .line 312
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lbxo;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lbxo;->f:Lbxg;

    invoke-virtual {v0, p1, p2}, Lbxg;->c(Ljava/lang/String;Ljava/lang/String;)Lbxg;

    .line 281
    return-object p0
.end method

.method public final b(Lbxn;)Lbxo;
    .locals 1
    .parameter

    .prologue
    .line 316
    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-static {v0, p1}, Lbxo;->a(Ljava/lang/String;Lbxn;)V

    .line 317
    :cond_0
    iput-object p1, p0, Lbxo;->i:Lbxn;

    .line 318
    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lbxo;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lbxo;->f:Lbxg;

    invoke-virtual {v0, p1, p2}, Lbxg;->a(Ljava/lang/String;Ljava/lang/String;)Lbxg;

    .line 290
    return-object p0
.end method

.method public final c(Lbxn;)Lbxo;
    .locals 2
    .parameter

    .prologue
    .line 334
    if-eqz p1, :cond_0

    iget-object v0, p1, Lbxn;->g:Lbxp;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    iput-object p1, p0, Lbxo;->j:Lbxn;

    .line 336
    return-object p0
.end method
