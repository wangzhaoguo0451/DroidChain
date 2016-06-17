.class public final Lcom/unionpay/mpay/utils/UPPayEngine;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/unionpay/pboctransaction/d;
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Lcck;

.field public b:Ljava/lang/String;

.field public c:Landroid/content/Context;

.field public d:Lcom/unionpay/mpay/utils/UPPayEngine$a;

.field public e:Lcfz;

.field public f:I

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    iput-object v0, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->g:Landroid/os/Handler;

    iput-object v0, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->d:Lcom/unionpay/mpay/utils/UPPayEngine$a;

    iput-object v0, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->e:Lcfz;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->f:I

    iput-object p1, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->c:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->g:Landroid/os/Handler;

    return-void
.end method

.method private native accountVerifyMessage(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private native actEntrustMessage(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private native banksMessage(I)Ljava/lang/String;
.end method

.method private native commonMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native encryptMessage(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private native entrustInitMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native getUserInfo(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private native queryMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native smsCodeMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native verifySign(ILjava/lang/String;Ljava/lang/String;)Z
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->f:I

    invoke-direct {p0, v0, p1}, Lcom/unionpay/mpay/utils/UPPayEngine;->getUserInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    invoke-virtual {v1, v0}, Lcck;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "sid"

    iget-object v2, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    iput-object v0, v1, Lcck;->c:Ljava/util/HashMap;

    const-string v0, "getuserinfo"

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/utils/UPPayEngine;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->f:I

    invoke-direct {p0, v0, p1, p2}, Lcom/unionpay/mpay/utils/UPPayEngine;->commonMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    invoke-virtual {v1, v0}, Lcck;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "sid"

    iget-object v2, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    iput-object v0, v1, Lcck;->c:Ljava/util/HashMap;

    if-gtz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/unionpay/mpay/utils/UPPayEngine;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->g:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->g:Landroid/os/Handler;

    mul-int/lit16 v2, p3, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final native decryptResponse(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public final native followRulesMessage(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public final native freeNativeData(I)V
.end method

.method public final native getServerUrl(I)Ljava/lang/String;
.end method

.method public final native getloginrules(I)Ljava/lang/String;
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcct;

    iget v2, v0, Lcct;->a:I

    if-nez v2, :cond_0

    iget v1, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->f:I

    iget-object v2, v0, Lcct;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/unionpay/mpay/utils/UPPayEngine;->decryptResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->d:Lcom/unionpay/mpay/utils/UPPayEngine$a;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->d:Lcom/unionpay/mpay/utils/UPPayEngine$a;

    iget v0, v0, Lcct;->a:I

    invoke-interface {v2, v0, v1}, Lcom/unionpay/mpay/utils/UPPayEngine$a;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UPPayEngine:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->d:Lcom/unionpay/mpay/utils/UPPayEngine$a;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/utils/UPPayEngine;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->d:Lcom/unionpay/mpay/utils/UPPayEngine$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->d:Lcom/unionpay/mpay/utils/UPPayEngine$a;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2, v1}, Lcom/unionpay/mpay/utils/UPPayEngine$a;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->f:I

    invoke-direct {p0, v0, p1}, Lcom/unionpay/mpay/utils/UPPayEngine;->encryptMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    invoke-virtual {v1, v0}, Lcck;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "sid"

    iget-object v2, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    iput-object v0, v1, Lcck;->c:Ljava/util/HashMap;

    new-instance v0, Lccj;

    iget-object v1, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    invoke-direct {v0, v1}, Lccj;-><init>(Lcck;)V

    invoke-virtual {v0}, Lccj;->a()I

    move-result v1

    invoke-virtual {v0}, Lccj;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_0

    iget v1, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->f:I

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mpay/utils/UPPayEngine;->decryptResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->g:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final native initJNIEnv(Landroid/app/Activity;ZZ)I
.end method

.method public final native initMessage(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public final native openRuleMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final native openupgradeMessage(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public final native payingMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final native retrieveInitializeKey(I)Ljava/lang/String;
.end method

.method public final native ruleMessage(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    iget-object v0, v0, Lcck;->c:Ljava/util/HashMap;

    const-string v1, "magic_number"

    const-string v2, "20131120"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lccj;

    iget-object v1, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    invoke-direct {v0, v1}, Lccj;-><init>(Lcck;)V

    invoke-virtual {v0}, Lccj;->a()I

    move-result v1

    invoke-virtual {v0}, Lccj;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcct;

    invoke-direct {v2, v1, v0}, Lcct;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->g:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mpay/utils/UPPayEngine;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final native setSessionKey(ILjava/lang/String;)V
.end method

.method public final native unBoundMessage(ILjava/lang/String;)Ljava/lang/String;
.end method
