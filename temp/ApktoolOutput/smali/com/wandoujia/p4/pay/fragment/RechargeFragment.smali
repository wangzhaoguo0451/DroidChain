.class public Lcom/wandoujia/p4/pay/fragment/RechargeFragment;
.super Landroid/support/v4/app/Fragment;
.source "RechargeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final INPUT_ITEM:Ljava/lang/String; = "\u624b\u52a8\u8f93\u5165"

.field private static final POLLING_COUNT:I = 0x5

.field private static final RECHARGE_APP_KEY_ID:Ljava/lang/String; = "100000225"

.field private static final RECHARGE_DESC:Ljava/lang/String; = "\u8c4c\u8c46\u5e01\u5145\u503c"

.field private static final RECHARGE_SECRET_KEY:Ljava/lang/String; = "9e45e1d5cfcd2ad21f86c1b43a12b3d8"

.field private static final TAG:Ljava/lang/String;

.field private static loopbreak:Z


# instance fields
.field private amountLabelText:Landroid/widget/TextView;

.field private currentOrder:Lcom/wandoujia/p4/pay/model/WandouOrder;

.field private defaultRechargeMoney:Ljava/lang/Long;

.field private localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

.field private payChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/pay/model/PayChannel;",
            ">;"
        }
    .end annotation
.end field

.field private payImpl:Lcom/wandoujia/p4/pay/PayImpl;

.field private paymentCallback:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;

.field private promptText:Landroid/widget/TextView;

.field private rechargeAmountSelector:Landroid/widget/Spinner;

.field private rechargeButton:Landroid/widget/Button;

.field private rechargeChannelSelector:Landroid/widget/Spinner;

.field private rootView:Landroid/view/View;

.field private selectedPayMethod:Ljava/lang/String;

.field private shenzhouCallback:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$ShenzhouLooperCallBack;

.field private shenzhouCardNumber:Landroid/widget/TextView;

.field private shenzhouInput:Landroid/view/View;

.field private shenzhouPassword:Landroid/widget/TextView;

.field private wdbCountInput:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->TAG:Ljava/lang/String;

    .line 259
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->loopbreak:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 78
    new-instance v0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;

    invoke-direct {v0, p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;-><init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->paymentCallback:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;

    .line 79
    new-instance v0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$ShenzhouLooperCallBack;

    invoke-direct {v0, p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$ShenzhouLooperCallBack;-><init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->shenzhouCallback:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$ShenzhouLooperCallBack;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->selectedPayMethod:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->selectedPayMethod:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->shenzhouInput:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->loopbreak:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 51
    sput-boolean p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->loopbreak:Z

    return p0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/model/WandouOrder;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->currentOrder:Lcom/wandoujia/p4/pay/model/WandouOrder;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Lcom/wandoujia/p4/pay/model/WandouOrder;)Lcom/wandoujia/p4/pay/model/WandouOrder;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->currentOrder:Lcom/wandoujia/p4/pay/model/WandouOrder;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Lcom/wandoujia/p4/pay/model/PayMethod;Lcom/wandoujia/p4/pay/model/WandouOrder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->recharge(Lcom/wandoujia/p4/pay/model/PayMethod;Lcom/wandoujia/p4/pay/model/WandouOrder;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->failToRecharge()V

    return-void
.end method

.method static synthetic access$1600(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->queryResultMessage()V

    return-void
.end method

.method static synthetic access$1700(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->paymentCallback:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/fragment/RechargeFragment$ShenzhouLooperCallBack;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->shenzhouCallback:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$ShenzhouLooperCallBack;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Lcom/wandoujia/p4/pay/model/WandouOrder;Lcom/wandoujia/p4/pay/model/PayCallBack;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->startSheznouLoop(Lcom/wandoujia/p4/pay/model/WandouOrder;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    return-void
.end method

.method static synthetic access$200(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->amountLabelText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rechargeAmountSelector:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->wdbCountInput:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Ljava/lang/Long;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->defaultRechargeMoney:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$502(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->defaultRechargeMoney:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$600(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rechargeChannelSelector:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$700(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/PayImpl;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->promptText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 493
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 494
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 495
    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 496
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$9;

    invoke-direct {v2, p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$9;-><init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 501
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 503
    return-void
.end method

.method private createOrder(Lcom/wandoujia/p4/pay/model/PayMethod;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 281
    sget-object v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->CANCEL:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    invoke-static {v0}, Lcom/wandoujia/p4/pay/PayImpl;->setFinishStatus(Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;)V

    .line 282
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0e066e

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v0, Lcom/wandoujia/p4/pay/model/WandouOrder;

    const-string v1, "\u8c4c\u8c46\u5e01\u5145\u503c"

    const-string v2, "\u8c4c\u8c46\u5e01\u5145\u503c"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/pay/model/WandouOrder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8c4c\u8c46\u5e01\u5145\u503c"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->setOut_trade_no(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    new-instance v2, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$5;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$5;-><init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;JLcom/wandoujia/p4/pay/model/PayMethod;)V

    new-instance v3, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$6;

    invoke-direct {v3, p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$6;-><init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/wandoujia/p4/pay/PayImpl;->createOrder(Lcom/wandoujia/p4/pay/model/WandouOrder;Lagu;Lagt;)V

    .line 322
    return-void
.end method

.method private failToRecharge()V
    .locals 7

    .prologue
    .line 330
    invoke-static {}, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->dismiss()V

    .line 331
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/WandouOrder;->toJSONString()Ljava/lang/String;

    move-result-object v5

    .line 332
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const/4 v1, -0x1

    sget-object v2, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;->RECHARGE:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

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

    .line 336
    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/wandoujia/p4/pay/fragment/RechargeFragment;
    .locals 1
    .parameter

    .prologue
    .line 82
    new-instance v0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;-><init>()V

    .line 83
    invoke-virtual {v0, p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 84
    return-object v0
.end method

.method private queryResultMessage()V
    .locals 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->rechargeResultUrl:Ljava/lang/String;

    new-instance v2, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$7;

    invoke-direct {v2, p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$7;-><init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/p4/pay/PayImpl;->queryOrderResult(Ljava/lang/String;Lcom/wandoujia/p4/pay/model/CallBack;)V

    .line 369
    return-void
.end method

.method private recharge(Lcom/wandoujia/p4/pay/model/PayMethod;Lcom/wandoujia/p4/pay/model/WandouOrder;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 506
    sget-object v0, Lcom/wandoujia/p4/pay/model/PayMethod;->ALIPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/pay/model/PayMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    const-string v0, "order"

    invoke-virtual {p2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrderIdPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/wandoujia/p4/pay/model/WandouOrder;->setRechargeInfo(Ljava/lang/String;)V

    .line 510
    new-instance v0, Lcom/wandoujia/p4/pay/paymethod/Alipay;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/paymethod/Alipay;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, p2, v2}, Lcom/wandoujia/p4/pay/paymethod/Alipay;->pay(Landroid/app/Activity;Lcom/wandoujia/p4/pay/model/WandouOrder;I)V

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    sget-object v0, Lcom/wandoujia/p4/pay/model/PayMethod;->UNIONPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/pay/model/PayMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    sget-object v0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->TAG:Ljava/lang/String;

    const-string v1, "Do UnionPay... nothing happened ..."

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    new-instance v1, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$10;

    invoke-direct {v1, p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$10;-><init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/PayImpl;->getUnionPayTN(Lcom/wandoujia/p4/pay/model/CallBack;)V

    goto :goto_0

    .line 533
    :cond_2
    sget-object v0, Lcom/wandoujia/p4/pay/model/PayMethod;->SHENZHOUPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/pay/model/PayMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 534
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->shenzhouCardNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 535
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->shenzhouPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 536
    new-instance v0, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    const-string v3, "1"

    invoke-virtual {p2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getMoneyInFen()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    long-to-int v4, v8

    new-instance v7, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$11;

    invoke-direct {v7, p0, p2}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$11;-><init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Lcom/wandoujia/p4/pay/model/WandouOrder;)V

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay;->pay(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/WandouOrder;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    goto :goto_0

    .line 562
    :cond_3
    sget-object v0, Lcom/wandoujia/p4/pay/model/PayMethod;->TELECOM:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/pay/model/PayMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 563
    new-instance v0, Lcom/wandoujia/p4/pay/paymethod/TelecomPay;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/paymethod/TelecomPay;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->paymentCallback:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;

    invoke-virtual {v0, v1, p2, v2}, Lcom/wandoujia/p4/pay/paymethod/TelecomPay;->pay(Landroid/content/Context;Lcom/wandoujia/p4/pay/model/WandouOrder;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    goto :goto_0

    .line 564
    :cond_4
    sget-object v0, Lcom/wandoujia/p4/pay/model/PayMethod;->UNICOM:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/pay/model/PayMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getChoseMoney()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/p4/pay/PayImpl;->showMoney(J)Ljava/lang/String;

    move-result-object v0

    .line 566
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getChoseMoney()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/p4/pay/PayImpl;->showMoney(J)Ljava/lang/String;

    move-result-object v1

    .line 567
    const-string v2, "\u786e\u8ba4\u4f7f\u7528\u8bdd\u8d39\u652f\u4ed8"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u652f\u4ed8 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u5143\u8d2d\u4e70"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u8c4c\u8c46\u5e01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;

    invoke-direct {v1, p0, p2}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;-><init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Lcom/wandoujia/p4/pay/model/WandouOrder;)V

    invoke-direct {p0, v2, v0, v1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private setUpPaythods()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getPayMethodList()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 130
    array-length v0, v2

    if-eqz v0, :cond_0

    aget-object v0, v2, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    const-string v0, "setUpPaythods"

    const-string v1, "payMethodNameList is null"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void

    :cond_1
    move v0, v1

    .line 134
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 135
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/wandoujia/p4/pay/model/PayMethod;->getByName(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 136
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/wandoujia/p4/pay/model/PayMethod;->getByName(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/model/PayMethod;->title()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 134
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_3
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f030253

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 144
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 145
    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rechargeChannelSelector:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 147
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rechargeChannelSelector:Landroid/widget/Spinner;

    new-instance v3, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;

    invoke-direct {v3, p0, v2}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;-><init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;[Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 234
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rechargeChannelSelector:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 236
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    const-string v1, "sdk-charge"

    new-instance v2, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$2;

    invoke-direct {v2, p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$2;-><init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)V

    new-instance v3, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$3;

    invoke-direct {v3, p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$3;-><init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/wandoujia/p4/pay/PayImpl;->getPromptText(Ljava/lang/String;Lagu;Lagt;)V

    goto :goto_0
.end method

.method private startSheznouLoop(Lcom/wandoujia/p4/pay/model/WandouOrder;Lcom/wandoujia/p4/pay/model/PayCallBack;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 262
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->loopbreak:Z

    .line 263
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$4;-><init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Lcom/wandoujia/p4/pay/model/WandouOrder;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 277
    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 474
    sget-object v0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->TAG:Ljava/lang/String;

    const-string v1, "Activity is null, stop to use this context to show toast."

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :goto_0
    return-void

    .line 478
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$8;

    invoke-direct {v1, p0, p1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$8;-><init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public getPayCallback()Lcom/wandoujia/p4/pay/model/PayCallBack;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->paymentCallback:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0e0685

    .line 603
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 605
    const v1, 0x7f0c04e6

    if-ne v1, v0, :cond_1

    .line 606
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->showFeedback(Landroid/support/v4/app/FragmentActivity;)V

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    const v1, 0x7f0c04e5

    if-ne v1, v0, :cond_0

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rechargeChannelSelector:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/pay/model/PayMethod;->getByTitle(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;

    move-result-object v1

    .line 610
    if-eqz v1, :cond_0

    .line 611
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 612
    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/PayMethod;->title()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wandoujia/p4/pay/model/PayChannel;->getRechargeMoneyList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 614
    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rechargeAmountSelector:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 615
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rechargeAmountSelector:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/model/PayChannel$RechargeItem;

    .line 617
    const-string v2, "rechargePay"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-wide v2, v0, Lcom/wandoujia/p4/pay/model/PayChannel$RechargeItem;->money:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 630
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 631
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 632
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->createOrder(Lcom/wandoujia/p4/pay/model/PayMethod;J)V

    goto :goto_0

    .line 620
    :cond_3
    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->wdbCountInput:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 621
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->wdbCountInput:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 623
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 625
    :catch_0
    move-exception v0

    invoke-virtual {p0, v6}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->toast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 634
    :cond_4
    invoke-virtual {p0, v6}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->toast(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-static {}, Lcom/wandoujia/p4/pay/model/PayChannel;->getChannels()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->payChannels:Ljava/util/List;

    .line 96
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "100000225"

    const-string v2, "9e45e1d5cfcd2ad21f86c1b43a12b3d8"

    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    .line 98
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/PayImpl;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/wandoujia/p4/pay/PayImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    .line 99
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    const v0, 0x7f030250

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rootView:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rechargeChannelSelector:Landroid/widget/Spinner;

    .line 109
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rechargeAmountSelector:Landroid/widget/Spinner;

    .line 110
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->promptText:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rechargeButton:Landroid/widget/Button;

    .line 112
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rechargeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->shenzhouInput:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->shenzhouCardNumber:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->shenzhouPassword:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->amountLabelText:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->wdbCountInput:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-direct {p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->setUpPaythods()V

    .line 125
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rootView:Landroid/view/View;

    return-object v0
.end method
