.class public final Levj;
.super Ljava/lang/Object;
.source "AppCommenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app/controller/AppCommenter;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app/controller/AppCommenter;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Levj;->a:Lcom/wandoujia/p4/app/controller/AppCommenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Levj;->a:Lcom/wandoujia/p4/app/controller/AppCommenter;

    iget-object v0, v0, Lcom/wandoujia/p4/app/controller/AppCommenter;->e:Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v2, Lfwx;

    invoke-direct {v2}, Lfwx;-><init>()V

    invoke-virtual {v2}, Lfwx;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfxo;

    iget-object v3, p0, Levj;->a:Lcom/wandoujia/p4/app/controller/AppCommenter;

    iget-object v3, v3, Lcom/wandoujia/p4/app/controller/AppCommenter;->b:Ljava/lang/String;

    iput-object v3, v0, Lfxo;->a:Ljava/lang/String;

    const-string v3, "phone"

    iput-object v3, v0, Lfxo;->d:Ljava/lang/String;

    iget-object v3, p0, Levj;->a:Lcom/wandoujia/p4/app/controller/AppCommenter;

    iget-object v3, v3, Lcom/wandoujia/p4/app/controller/AppCommenter;->e:Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    invoke-virtual {v3}, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;->name()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lfxo;->b:Ljava/lang/String;

    iget-object v3, p0, Levj;->a:Lcom/wandoujia/p4/app/controller/AppCommenter;

    iget-wide v4, v3, Lcom/wandoujia/p4/app/controller/AppCommenter;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lfxo;->c:Ljava/lang/Long;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lfxo;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    :cond_0
    :goto_0
    :try_start_1
    new-instance v2, Lfwv;

    invoke-direct {v2}, Lfwv;-><init>()V

    invoke-virtual {v2}, Lfwv;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfxn;

    const/4 v3, 0x0

    iput-object v3, v0, Lfxn;->f:Ljava/lang/String;

    const-string v3, "phone"

    iput-object v3, v0, Lfxn;->g:Ljava/lang/String;

    iget-object v3, p0, Levj;->a:Lcom/wandoujia/p4/app/controller/AppCommenter;

    iget-object v3, v3, Lcom/wandoujia/p4/app/controller/AppCommenter;->b:Ljava/lang/String;

    iput-object v3, v0, Lfxn;->b:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, v0, Lfxn;->e:Ljava/lang/String;

    iget-object v3, p0, Levj;->a:Lcom/wandoujia/p4/app/controller/AppCommenter;

    iget-object v3, v3, Lcom/wandoujia/p4/app/controller/AppCommenter;->d:Ljava/lang/String;

    iput-object v3, v0, Lfxn;->d:Ljava/lang/String;

    iget-object v3, p0, Levj;->a:Lcom/wandoujia/p4/app/controller/AppCommenter;

    iget-wide v4, v3, Lcom/wandoujia/p4/app/controller/AppCommenter;->c:J

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lfxn;->c:Ljava/lang/Integer;

    iget-object v3, p0, Levj;->a:Lcom/wandoujia/p4/app/controller/AppCommenter;

    iget-object v3, v3, Lcom/wandoujia/p4/app/controller/AppCommenter;->a:Ljava/lang/String;

    iput-object v3, v0, Lfxn;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lfxn;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/comment/PostResponse;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/comment/PostResponse;->getErrorCode()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    iget-object v0, p0, Levj;->a:Lcom/wandoujia/p4/app/controller/AppCommenter;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/wandoujia/p4/app/controller/AppCommenter;->g:Landroid/content/Context;

    const-class v4, Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "pn"

    iget-object v4, v0, Lcom/wandoujia/p4/app/controller/AppCommenter;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x1400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, v0, Lcom/wandoujia/p4/app/controller/AppCommenter;->g:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 159
    :cond_1
    :goto_1
    return-void

    .line 158
    :cond_2
    invoke-virtual {v0}, Lcom/wandoujia/entities/app/comment/PostResponse;->getErrorCode()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Levj;->a:Lcom/wandoujia/p4/app/controller/AppCommenter;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/comment/PostResponse;->getComment()Lcom/wandoujia/entities/app/comment/Comment;

    move-result-object v0

    iput-object v0, v2, Lcom/wandoujia/p4/app/controller/AppCommenter;->f:Lcom/wandoujia/entities/app/comment/Comment;

    iget-object v0, p0, Levj;->a:Lcom/wandoujia/p4/app/controller/AppCommenter;

    iget-object v0, v0, Lcom/wandoujia/p4/app/controller/AppCommenter;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Levj;->a:Lcom/wandoujia/p4/app/controller/AppCommenter;

    iget-object v0, v0, Lcom/wandoujia/p4/app/controller/AppCommenter;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Levl;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Levl;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_3
    move-object v0, v1

    :goto_2
    iget-object v1, p0, Levj;->a:Lcom/wandoujia/p4/app/controller/AppCommenter;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget v0, Ldxa;->b:I

    invoke-static {}, Lesb;->e()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Levh;

    invoke-direct {v3, v1, v0}, Levh;-><init>(Lcom/wandoujia/p4/app/controller/AppCommenter;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3
    iget-object v0, p0, Levj;->a:Lcom/wandoujia/p4/app/controller/AppCommenter;

    iget-object v0, v0, Lcom/wandoujia/p4/app/controller/AppCommenter;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Levl;

    if-eqz v0, :cond_1

    iget-object v1, p0, Levj;->a:Lcom/wandoujia/p4/app/controller/AppCommenter;

    iget-object v1, v1, Lcom/wandoujia/p4/app/controller/AppCommenter;->a:Ljava/lang/String;

    iget-object v2, p0, Levj;->a:Lcom/wandoujia/p4/app/controller/AppCommenter;

    iget-object v2, v2, Lcom/wandoujia/p4/app/controller/AppCommenter;->e:Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    invoke-interface {v0, v1, v2}, Levl;->a(Ljava/lang/String;Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;)V

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-virtual {v0}, Lcom/wandoujia/entities/app/comment/PostResponse;->getErrorMsg()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_2

    :cond_5
    sget v2, Ldxa;->b:I

    invoke-static {}, Lesb;->e()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Levi;

    invoke-direct {v4, v1, v0, v2}, Levi;-><init>(Lcom/wandoujia/p4/app/controller/AppCommenter;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method
