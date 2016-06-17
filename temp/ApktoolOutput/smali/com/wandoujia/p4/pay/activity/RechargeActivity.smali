.class public Lcom/wandoujia/p4/pay/activity/RechargeActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RechargeActivity.java"


# static fields
.field public static final REQUEST_ALIPAY:I = 0x64

.field public static final REQUEST_UNIONPAY:I = 0xc8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activity:Landroid/support/v4/app/FragmentActivity;

.field private hasDestoryed:Z

.field private localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

.field private rechargeFragment:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->hasDestoryed:Z

    return-void
.end method

.method static synthetic access$000(Lcom/wandoujia/p4/pay/activity/RechargeActivity;)Lcom/wandoujia/p4/pay/storage/LocalStorage;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wandoujia/p4/pay/activity/RechargeActivity;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private exitDialog()V
    .locals 3

    .prologue
    .line 64
    const-string v0, "\u5145\u503c\u5c1a\u672a\u5b8c\u6210"

    const-string v1, "\u786e\u8ba4\u9000\u51fa\u5145\u503c\uff1f"

    new-instance v2, Lcom/wandoujia/p4/pay/activity/RechargeActivity$1;

    invoke-direct {v2, p0}, Lcom/wandoujia/p4/pay/activity/RechargeActivity$1;-><init>(Lcom/wandoujia/p4/pay/activity/RechargeActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->showQuitDialog(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment$OnQuitCallback;)V

    .line 82
    return-void
.end method

.method private getPayCallback()Lcom/wandoujia/p4/pay/model/PayCallBack;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->rechargeFragment:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->rechargeFragment:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getPayCallback()Lcom/wandoujia/p4/pay/model/PayCallBack;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static launch(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/p4/pay/activity/RechargeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    const-string v1, "appId"

    const-string v2, "100000225"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 47
    return-void
.end method

.method private listPayMethods()V
    .locals 5

    .prologue
    .line 109
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    const v3, 0x7f0e066e

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    .line 116
    iget-object v1, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/PayImpl;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/wandoujia/p4/pay/PayImpl;

    move-result-object v1

    .line 118
    sget-object v2, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->CANCEL:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    invoke-static {v2}, Lcom/wandoujia/p4/pay/PayImpl;->setFinishStatus(Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;)V

    .line 120
    iget-object v2, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v2

    .line 121
    if-eqz v2, :cond_0

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/User;->getUid()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAuth()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/wandoujia/p4/pay/activity/RechargeActivity$2;

    invoke-direct {v4, p0}, Lcom/wandoujia/p4/pay/activity/RechargeActivity$2;-><init>(Lcom/wandoujia/p4/pay/activity/RechargeActivity;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/wandoujia/p4/pay/PayImpl;->listRechargeMethods(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/pay/model/CallBack;)V

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 102
    new-instance v0, Lcom/wandoujia/p4/pay/paymethod/Alipay;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/paymethod/Alipay;-><init>()V

    invoke-direct {p0}, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->getPayCallback()Lcom/wandoujia/p4/pay/model/PayCallBack;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/wandoujia/p4/pay/paymethod/Alipay;->onResult(Landroid/content/Intent;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 104
    new-instance v0, Lcom/wandoujia/p4/pay/paymethod/UnionPay;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/paymethod/UnionPay;-><init>()V

    invoke-direct {p0}, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->getPayCallback()Lcom/wandoujia/p4/pay/model/PayCallBack;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/wandoujia/p4/pay/paymethod/UnionPay;->onResult(Landroid/content/Intent;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->hasDestoryed:Z

    .line 53
    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    .line 54
    const v0, 0x7f03007e

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->setContentView(I)V

    .line 55
    iput-object p0, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 57
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->listPayMethods()V

    .line 61
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->hasDestoryed:Z

    .line 89
    invoke-static {}, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->dismiss()V

    .line 90
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getFinish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->exitDialog()V

    .line 158
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showRechargeFragment()V
    .locals 3

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->hasDestoryed:Z

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->newInstance(Landroid/os/Bundle;)Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->rechargeFragment:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    .line 148
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    const v1, 0x7f0c0221

    iget-object v2, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->rechargeFragment:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-virtual {v0, v1, v2}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->b()I

    goto :goto_0
.end method
