.class abstract Lbyg;
.super Ljava/lang/Object;
.source "HttpConnection.java"

# interfaces
.implements Lhth;


# instance fields
.field protected a:Z

.field private synthetic b:Lbyf;


# direct methods
.method private constructor <init>(Lbyf;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lbyg;->b:Lbyf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbyf;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lbyg;-><init>(Lbyf;)V

    return-void
.end method


# virtual methods
.method public final a()Lhti;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lbyg;->b:Lbyf;

    iget-object v0, v0, Lbyf;->c:Lhss;

    invoke-interface {v0}, Lhss;->a()Lhti;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 344
    iget-object v0, p0, Lbyg;->b:Lbyf;

    iget v0, v0, Lbyf;->e:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbyg;->b:Lbyf;

    iget v2, v2, Lbyf;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_0
    iget-object v0, p0, Lbyg;->b:Lbyf;

    iput v2, v0, Lbyf;->e:I

    .line 347
    if-eqz p1, :cond_2

    iget-object v0, p0, Lbyg;->b:Lbyf;

    iget v0, v0, Lbyf;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 348
    iget-object v0, p0, Lbyg;->b:Lbyf;

    iput v2, v0, Lbyf;->f:I

    .line 349
    sget-object v0, Lbxr;->b:Lbxr;

    iget-object v1, p0, Lbyg;->b:Lbyf;

    iget-object v1, v1, Lbyf;->a:Lbwz;

    iget-object v2, p0, Lbyg;->b:Lbyf;

    iget-object v2, v2, Lbyf;->b:Lbwy;

    invoke-virtual {v0, v1, v2}, Lbxr;->a(Lbwz;Lbwy;)V

    .line 354
    :cond_1
    :goto_0
    return-void

    .line 350
    :cond_2
    iget-object v0, p0, Lbyg;->b:Lbyf;

    iget v0, v0, Lbyf;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 351
    iget-object v0, p0, Lbyg;->b:Lbyf;

    const/4 v1, 0x6

    iput v1, v0, Lbyf;->e:I

    .line 352
    iget-object v0, p0, Lbyg;->b:Lbyf;

    iget-object v0, v0, Lbyf;->b:Lbwy;

    iget-object v0, v0, Lbwy;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lbyg;->b:Lbyf;

    iget-object v0, v0, Lbyf;->b:Lbwy;

    iget-object v0, v0, Lbwy;->c:Ljava/net/Socket;

    invoke-static {v0}, Lbya;->a(Ljava/net/Socket;)V

    .line 370
    iget-object v0, p0, Lbyg;->b:Lbyf;

    const/4 v1, 0x6

    iput v1, v0, Lbyf;->e:I

    .line 371
    return-void
.end method
