.class public Lcom/wandoujia/p4/pay/activity/PayActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PayActivity.java"


# static fields
.field public static final REQUEST_ALIPAY:I = 0x64

.field public static final REQUEST_UNIONPAY:I = 0xc8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activity:Landroid/support/v4/app/FragmentActivity;

.field private localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

.field private payFragment:Lcom/wandoujia/p4/pay/fragment/PayFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/wandoujia/p4/pay/activity/PayActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/activity/PayActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/wandoujia/p4/pay/activity/PayActivity;)Lcom/wandoujia/p4/pay/storage/LocalStorage;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wandoujia/p4/pay/activity/PayActivity;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wandoujia/p4/pay/activity/PayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/wandoujia/p4/pay/activity/PayActivity;->failToPay()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/wandoujia/p4/pay/activity/PayActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createOrder()V
    .locals 7

    .prologue
    .line 127
    sget-object v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->CANCEL:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    invoke-static {v0}, Lcom/wandoujia/p4/pay/PayImpl;->setFinishStatus(Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;)V

    .line 128
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    const v3, 0x7f0e066e

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    .line 134
    :try_start_0
    new-instance v1, Lcom/wandoujia/p4/pay/model/WandouOrder;

    const-string v2, "order_desc"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "order_desc"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "order_price"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/wandoujia/p4/pay/model/WandouOrder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 138
    const-string v2, "order_outtrade_no"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/pay/model/WandouOrder;->setOut_trade_no(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/wandoujia/p4/pay/PayImpl;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/wandoujia/p4/pay/PayImpl;

    move-result-object v0

    .line 152
    new-instance v2, Lcom/wandoujia/p4/pay/activity/PayActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/wandoujia/p4/pay/activity/PayActivity$2;-><init>(Lcom/wandoujia/p4/pay/activity/PayActivity;Lcom/wandoujia/p4/pay/PayImpl;)V

    new-instance v3, Lcom/wandoujia/p4/pay/activity/PayActivity$3;

    invoke-direct {v3, p0}, Lcom/wandoujia/p4/pay/activity/PayActivity$3;-><init>(Lcom/wandoujia/p4/pay/activity/PayActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/wandoujia/p4/pay/PayImpl;->createOrder(Lcom/wandoujia/p4/pay/model/WandouOrder;Lagu;Lagt;)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Order price is invalid, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-static {}, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->dismiss()V

    .line 142
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/WandouOrder;->toJSONString()Ljava/lang/String;

    move-result-object v5

    .line 143
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, -0x1

    sget-object v2, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;->PAY:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    sget-object v3, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->FAIL:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->FAIL:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    invoke-virtual {v6}, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/wandoujia/p4/pay/callback/CallbackWrapper;->invoke(Landroid/app/Activity;ILcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private exitDialog()V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "\u652f\u4ed8\u5c1a\u672a\u5b8c\u6210"

    const-string v2, "\u786e\u8ba4\u9000\u51fa\u652f\u4ed8\uff1f"

    new-instance v3, Lcom/wandoujia/p4/pay/activity/PayActivity$1;

    invoke-direct {v3, p0}, Lcom/wandoujia/p4/pay/activity/PayActivity$1;-><init>(Lcom/wandoujia/p4/pay/activity/PayActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->showQuitDialog(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment$OnQuitCallback;)V

    .line 80
    return-void
.end method

.method private failToPay()V
    .locals 7

    .prologue
    .line 205
    invoke-static {}, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->dismiss()V

    .line 206
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/WandouOrder;->toJSONString()Ljava/lang/String;

    move-result-object v5

    .line 207
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, -0x1

    sget-object v2, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;->PAY:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    sget-object v3, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->FAIL:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->FAIL:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    invoke-virtual {v6}, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/wandoujia/p4/pay/callback/CallbackWrapper;->invoke(Landroid/app/Activity;ILcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private getPayCallback()Lcom/wandoujia/p4/pay/model/PayCallBack;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->payFragment:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->payFragment:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getPayCallback()Lcom/wandoujia/p4/pay/model/PayCallBack;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 105
    new-instance v0, Lcom/wandoujia/p4/pay/paymethod/Alipay;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/paymethod/Alipay;-><init>()V

    invoke-direct {p0}, Lcom/wandoujia/p4/pay/activity/PayActivity;->getPayCallback()Lcom/wandoujia/p4/pay/model/PayCallBack;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/wandoujia/p4/pay/paymethod/Alipay;->onResult(Landroid/content/Intent;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 107
    new-instance v0, Lcom/wandoujia/p4/pay/paymethod/UnionPay;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/paymethod/UnionPay;-><init>()V

    invoke-direct {p0}, Lcom/wandoujia/p4/pay/activity/PayActivity;->getPayCallback()Lcom/wandoujia/p4/pay/model/PayCallBack;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/wandoujia/p4/pay/paymethod/UnionPay;->onResult(Landroid/content/Intent;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    .line 47
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f03007e

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    .line 48
    iput-object p0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 49
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/wandoujia/p4/pay/activity/PayActivity;->createOrder()V

    .line 53
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 99
    invoke-static {}, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->dismiss()V

    .line 100
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 85
    iget-object v1, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->e()I

    move-result v1

    if-lez v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getFinish()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/wandoujia/p4/pay/activity/PayActivity;->exitDialog()V

    .line 90
    const/4 v0, 0x1

    goto :goto_0
.end method

.method showPaymentFragment()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 117
    const-string v1, "appkey"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "seckey"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getSecretKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->newInstance(Landroid/os/Bundle;)Lcom/wandoujia/p4/pay/fragment/PayFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->payFragment:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    .line 120
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    const v1, 0x7f0c0221

    iget-object v2, p0, Lcom/wandoujia/p4/pay/activity/PayActivity;->payFragment:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-virtual {v0, v1, v2}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->b()I

    goto :goto_0
.end method
