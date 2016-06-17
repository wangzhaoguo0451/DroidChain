.class public final Lakb;
.super Ljava/lang/Object;
.source "Objects.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lakc;

.field private c:Lakc;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Lakc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lakc;-><init>(B)V

    iput-object v0, p0, Lakb;->b:Lakc;

    .line 199
    iget-object v0, p0, Lakb;->b:Lakc;

    iput-object v0, p0, Lakb;->c:Lakc;

    .line 200
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lakb;->a:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lakb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lakb;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 417
    new-instance v1, Lakc;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lakc;-><init>(B)V

    iget-object v0, p0, Lakb;->c:Lakc;

    iput-object v1, v0, Lakc;->c:Lakc;

    iput-object v1, p0, Lakb;->c:Lakc;

    .line 418
    iput-object p2, v1, Lakc;->b:Ljava/lang/Object;

    .line 419
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lakc;->a:Ljava/lang/String;

    .line 420
    return-object p0
.end method

.method public final a(Ljava/lang/String;Z)Lakb;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lakb;->a(Ljava/lang/String;Ljava/lang/Object;)Lakb;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 385
    const-string v1, ""

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lakb;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 389
    iget-object v0, p0, Lakb;->b:Lakc;

    iget-object v0, v0, Lakc;->c:Lakc;

    :goto_0
    if-eqz v0, :cond_1

    .line 391
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string v1, ", "

    .line 395
    iget-object v3, v0, Lakc;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 396
    iget-object v3, v0, Lakc;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    :cond_0
    iget-object v3, v0, Lakc;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    iget-object v0, v0, Lakc;->c:Lakc;

    goto :goto_0

    .line 401
    :cond_1
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
