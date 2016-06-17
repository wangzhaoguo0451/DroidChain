.class final Lfue;
.super Landroid/os/AsyncTask;
.source "PickUpGiftAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfua;


# direct methods
.method private constructor <init>(Lfua;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lfue;->a:Lfua;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfua;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lfue;-><init>(Lfua;)V

    return-void
.end method

.method private varargs a()Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;
    .locals 4

    .prologue
    .line 166
    :try_start_0
    new-instance v1, Lfwm;

    invoke-direct {v1}, Lfwm;-><init>()V

    .line 167
    invoke-virtual {v1}, Lfwm;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfxs;

    iget-object v2, p0, Lfue;->a:Lfua;

    invoke-static {v2}, Lfua;->c(Lfua;)Lcom/wandoujia/p4/gift/http/model/GiftModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lfxs;->a:Ljava/lang/String;

    iget-object v2, p0, Lfue;->a:Lfua;

    invoke-static {v2}, Lfua;->c(Lfua;)Lcom/wandoujia/p4/gift/http/model/GiftModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lfxs;->c:Ljava/lang/Long;

    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lfxs;->b:Ljava/lang/String;

    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lfxs;->d:Ljava/lang/String;

    .line 172
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 161
    invoke-direct {p0}, Lfue;->a()Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0e0340

    const v4, 0x7f0e0245

    const/4 v5, 0x1

    .line 161
    check-cast p1, Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lfue;->a:Lfua;

    invoke-static {v0}, Lfua;->a(Lfua;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lhoq;

    iget-object v1, p0, Lfue;->a:Lfua;

    invoke-static {v1}, Lfua;->a(Lfua;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lhoq;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lfue;->a:Lfua;

    invoke-static {v1}, Lfua;->a(Lfua;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0349

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhoq;->a(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v0

    iget-object v1, p0, Lfue;->a:Lfua;

    invoke-static {v1}, Lfua;->a(Lfua;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfuf;

    invoke-direct {v2, p0}, Lfuf;-><init>(Lfue;)V

    invoke-virtual {v0, v1, v2}, Lhoq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;->getError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v1

    iget-object v2, p0, Lfue;->a:Lfua;

    invoke-static {v2}, Lfua;->a(Lfua;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e0358

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfug;

    invoke-direct {v3, p0}, Lfug;-><init>(Lfue;)V

    invoke-virtual {v1, v2, v3}, Lhoq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v1

    iget-object v2, p0, Lfue;->a:Lfua;

    invoke-static {v2}, Lfua;->a(Lfua;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lhoq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;

    :goto_0
    invoke-virtual {v0}, Lhoq;->b()Lhoj;

    move-result-object v0

    invoke-virtual {v0, v5}, Lhoj;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-void

    :cond_1
    const-string v1, "2"

    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;->getError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;->getCdkey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lfue;->a:Lfua;

    invoke-static {v1}, Lfua;->a(Lfua;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfui;

    invoke-direct {v2, p0, p1}, Lfui;-><init>(Lfue;Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;)V

    invoke-virtual {v0, v1, v2}, Lhoq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lfue;->a:Lfua;

    invoke-static {v3}, Lfua;->a(Lfua;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e033f

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;->getCdkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfue;->a:Lfua;

    invoke-static {v3}, Lfua;->a(Lfua;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e0354

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v1

    iget-object v2, p0, Lfue;->a:Lfua;

    invoke-static {v2}, Lfua;->a(Lfua;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfuh;

    invoke-direct {v3, p0, p1}, Lfuh;-><init>(Lfue;Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;)V

    invoke-virtual {v1, v2, v3}, Lhoq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;

    invoke-static {}, Lfvh;->a()Lfvh;

    move-result-object v1

    iget-object v2, p0, Lfue;->a:Lfua;

    invoke-static {v2}, Lfua;->c(Lfua;)Lcom/wandoujia/p4/gift/http/model/GiftModel;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setReceived(Z)Lcom/wandoujia/p4/gift/http/model/GiftModel;

    move-result-object v2

    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;->getCdkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setCdkey(Ljava/lang/String;)Lcom/wandoujia/p4/gift/http/model/GiftModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfvh;->a(Lcom/wandoujia/p4/gift/http/model/GiftModel;)V

    goto/16 :goto_0
.end method
