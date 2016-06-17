.class public final Levk;
.super Ljava/lang/Object;
.source "AppCommenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app/controller/AppCommenter;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/app/controller/AppCommenter;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Levk;->a:Lcom/wandoujia/p4/app/controller/AppCommenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/app/controller/AppCommenter;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    invoke-direct {p0, p1}, Levk;-><init>(Lcom/wandoujia/p4/app/controller/AppCommenter;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 216
    :try_start_0
    new-instance v1, Lfwe;

    invoke-direct {v1}, Lfwe;-><init>()V

    .line 219
    invoke-virtual {v1}, Lfwe;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfxk;

    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lfxk;->b:Ljava/lang/String;

    const-string v2, "phone"

    iput-object v2, v0, Lfxk;->c:Ljava/lang/String;

    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lfxk;->d:Ljava/lang/String;

    iget-object v2, p0, Levk;->a:Lcom/wandoujia/p4/app/controller/AppCommenter;

    iget-object v2, v2, Lcom/wandoujia/p4/app/controller/AppCommenter;->b:Ljava/lang/String;

    iput-object v2, v0, Lfxk;->a:Ljava/lang/String;

    .line 221
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 222
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    iget-object v1, p0, Levk;->a:Lcom/wandoujia/p4/app/controller/AppCommenter;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/comment/Comment;

    iput-object v0, v1, Lcom/wandoujia/p4/app/controller/AppCommenter;->f:Lcom/wandoujia/entities/app/comment/Comment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    goto :goto_0
.end method
