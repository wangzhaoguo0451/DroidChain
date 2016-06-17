.class public Lcom/wandoujia/p4/pay/fragment/PayFragment;
.super Landroid/support/v4/app/Fragment;
.source "PayFragment.java"


# static fields
.field private static final INPUT_ITEM:Ljava/lang/String; = "\u624b\u52a8\u8f93\u5165"

.field private static final POLLING_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String;

.field private static loopbreak:Z


# instance fields
.field private amountLabelText:Landroid/widget/TextView;

.field private balancePayPasswordInput:Landroid/widget/EditText;

.field private balanceValueText:Landroid/widget/TextView;

.field private bonusValueText:Landroid/widget/TextView;

.field private currentOrder:Lcom/wandoujia/p4/pay/model/WandouOrder;

.field private forgotPassword:Landroid/widget/TextView;

.field private localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

.field private moneyListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private needRechargeValueText:Landroid/widget/TextView;

.field private orderDesc:Ljava/lang/String;

.field private orderPriceInFen:Ljava/lang/Long;

.field private otherPaymentsPanel:Landroid/view/View;

.field private payButton:Landroid/widget/Button;

.field private payImpl:Lcom/wandoujia/p4/pay/PayImpl;

.field private payWandouCoinText:Landroid/widget/TextView;

.field private paymentCallback:Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private promptText:Landroid/widget/TextView;

.field private purchaseItemName:Landroid/widget/TextView;

.field private purchaseItemPrice:Landroid/widget/TextView;

.field private purchaseItemSupplement:Landroid/widget/TextView;

.field private rechargeAmountSelector:Landroid/widget/Spinner;

.field private rechargeChannelSelector:Landroid/widget/Spinner;

.field private rechargeMoneyList:[Ljava/lang/String;

.field private rootView:Landroid/view/View;

.field private shenzhouCallback:Lcom/wandoujia/p4/pay/fragment/PayFragment$ShenzhouLooperCallBack;

.field private shenzhouCardNumber:Landroid/widget/TextView;

.field private shenzhouInput:Landroid/view/View;

.field private shenzhouPassword:Landroid/widget/TextView;

.field private wdbCountInput:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->TAG:Ljava/lang/String;

    .line 653
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->loopbreak:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 94
    new-instance v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;

    invoke-direct {v0, p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->paymentCallback:Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;

    .line 95
    new-instance v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$ShenzhouLooperCallBack;

    invoke-direct {v0, p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment$ShenzhouLooperCallBack;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->shenzhouCallback:Lcom/wandoujia/p4/pay/fragment/PayFragment$ShenzhouLooperCallBack;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->otherPaymentsPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->payButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/wandoujia/p4/pay/fragment/PayFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->toast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/fragment/PayFragment$ShenzhouLooperCallBack;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->shenzhouCallback:Lcom/wandoujia/p4/pay/fragment/PayFragment$ShenzhouLooperCallBack;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/wandoujia/p4/pay/fragment/PayFragment;Lcom/wandoujia/p4/pay/model/WandouOrder;Lcom/wandoujia/p4/pay/model/PayCallBack;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->startSheznouLoop(Lcom/wandoujia/p4/pay/model/WandouOrder;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->paymentCallback:Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/wandoujia/p4/pay/fragment/PayFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/wandoujia/p4/pay/fragment/PayFragment;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->confirmMoneyNotEnough(Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/model/WandouOrder;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->currentOrder:Lcom/wandoujia/p4/pay/model/WandouOrder;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->balancePayPasswordInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->shenzhouInput:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeChannelSelector:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->amountLabelText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/wandoujia/p4/pay/fragment/PayFragment;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeMoneyList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/wandoujia/p4/pay/fragment/PayFragment;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeMoneyList:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->moneyListAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/wandoujia/p4/pay/fragment/PayFragment;Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->moneyListAdapter:Landroid/widget/ArrayAdapter;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->promptText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->dismissProgress()V

    return-void
.end method

.method static synthetic access$2500(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->queryResultMessage()V

    return-void
.end method

.method static synthetic access$2600()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->loopbreak:Z

    return v0
.end method

.method static synthetic access$2602(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 59
    sput-boolean p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->loopbreak:Z

    return p0
.end method

.method static synthetic access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeAmountSelector:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->wdbCountInput:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/PayImpl;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->shenzhouCardNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->shenzhouPassword:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private bindInfo()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->purchaseItemName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->currentOrder:Lcom/wandoujia/p4/pay/model/WandouOrder;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->purchaseItemPrice:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->currentOrder:Lcom/wandoujia/p4/pay/model/WandouOrder;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getShowMoney()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->purchaseItemSupplement:Landroid/widget/TextView;

    const v1, 0x7f0e0155

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 193
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->payButton:Landroid/widget/Button;

    const v1, 0x7f0e04d0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 194
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->payButton:Landroid/widget/Button;

    new-instance v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    invoke-direct {v1, p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    invoke-direct {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->setUpOtherPaymentPanel()V

    .line 345
    return-void
.end method

.method private confirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 758
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 759
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 760
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/wandoujia/p4/pay/fragment/PayFragment$11;

    invoke-direct {v2, p0, p1, p4}, Lcom/wandoujia/p4/pay/fragment/PayFragment$11;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 767
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/wandoujia/p4/pay/fragment/PayFragment$12;

    invoke-direct {v2, p0, p1}, Lcom/wandoujia/p4/pay/fragment/PayFragment$12;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 773
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 774
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 775
    return-void
.end method

.method private confirmMoneyNotEnough(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter

    .prologue
    .line 778
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 779
    const v1, 0x7f0e023f

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e023c

    invoke-virtual {p0, v2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 781
    const v1, 0x7f0e023e

    new-instance v2, Lcom/wandoujia/p4/pay/fragment/PayFragment$13;

    invoke-direct {v2, p0, p1}, Lcom/wandoujia/p4/pay/fragment/PayFragment$13;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 789
    const v1, 0x7f0e023d

    new-instance v2, Lcom/wandoujia/p4/pay/fragment/PayFragment$14;

    invoke-direct {v2, p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment$14;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 795
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 796
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 797
    return-void
.end method

.method private dismissProgress()V
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 703
    :cond_0
    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/wandoujia/p4/pay/fragment/PayFragment;
    .locals 1
    .parameter

    .prologue
    .line 100
    new-instance v0, Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;-><init>()V

    .line 101
    invoke-virtual {v0, p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->setArguments(Landroid/os/Bundle;)V

    .line 102
    return-object v0
.end method

.method private queryResultMessage()V
    .locals 3

    .prologue
    .line 706
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->resultUrl:Ljava/lang/String;

    new-instance v2, Lcom/wandoujia/p4/pay/fragment/PayFragment$10;

    invoke-direct {v2, p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment$10;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/p4/pay/PayImpl;->queryOrderResult(Ljava/lang/String;Lcom/wandoujia/p4/pay/model/CallBack;)V

    .line 755
    return-void
.end method

.method private setUpOtherPaymentPanel()V
    .locals 10

    .prologue
    const v7, 0x7f0a018c

    const/4 v1, 0x0

    const v4, 0x7f0c04c7

    const-wide/16 v8, 0x0

    const/16 v6, 0x8

    .line 350
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->forgotPassword:Landroid/widget/TextView;

    new-instance v2, Lcom/wandoujia/p4/pay/fragment/PayFragment$4;

    invoke-direct {v2, p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment$4;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getBalance()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v8

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->balanceValueText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getBonusMoney()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v8

    if-nez v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0c04c5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->bonusValueText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/PayImpl;->needRecharge()Z

    move-result v0

    if-nez v0, :cond_5

    .line 369
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    const-string v1, "BALANCEPAY"

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setCurPayMethod(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->balancePayPasswordInput:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->showSoftKeyboard(Landroid/view/View;)V

    .line 373
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getBonusMoney()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getMoneyInFen()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 374
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->bonusValueText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getMoneyInFen()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/p4/pay/PayImpl;->showMoney(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->balanceValueText:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->bonusValueText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getMoneyInFen()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v8, v2

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/p4/pay/PayImpl;->showMoney(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->purchaseItemSupplement:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->purchaseItemPrice:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getMoneyInFen()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/p4/pay/PayImpl;->showMoney(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    :cond_2
    :goto_0
    return-void

    .line 383
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getBonusMoney()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_4

    .line 384
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->purchaseItemSupplement:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->purchaseItemPrice:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getMoneyInFen()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/p4/pay/PayImpl;->showMoney(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->bonusValueText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getBonusMoney()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v8, v2

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/p4/pay/PayImpl;->showMoney(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->balanceValueText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getMoneyInFen()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v4}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getBonusMoney()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/p4/pay/PayImpl;->showMoney(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 391
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->balanceValueText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->balanceValueText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 399
    :cond_5
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "\u8d26\u6237\u4f59\u989d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->balanceValueText:Landroid/widget/TextView;

    const/high16 v2, 0x4150

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 402
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->balanceValueText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 403
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->balanceValueText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getBalance()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v8, v4

    invoke-virtual {v2, v4, v5}, Lcom/wandoujia/p4/pay/PayImpl;->showMoney(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->bonusValueText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getBonusMoney()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v8, v4

    invoke-virtual {v2, v4, v5}, Lcom/wandoujia/p4/pay/PayImpl;->showMoney(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->balancePayPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->forgotPassword:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->otherPaymentsPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->purchaseItemSupplement:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->payButton:Landroid/widget/Button;

    const v2, 0x7f0e0504

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 410
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->payButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 412
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getBonusMoney()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v8

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getBalance()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v8

    if-nez v0, :cond_6

    .line 413
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0c04c9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->needRechargeValueText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    :goto_1
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getPayMethodList()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 427
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getPayMethodList()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 428
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 429
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\u3002"

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 430
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_0

    .line 417
    :cond_6
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->purchaseItemPrice:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 418
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0c04c1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 420
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->needRechargeValueText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getMoneyInFen()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getBalance()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getBonusMoney()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/wandoujia/p4/pay/PayImpl;->showMoney(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    move v0, v1

    .line 434
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_8

    .line 436
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/wandoujia/p4/pay/model/PayMethod;->getByName(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/model/PayMethod;->title()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 438
    :cond_8
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f030253

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 443
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 446
    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeChannelSelector:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 447
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeChannelSelector:Landroid/widget/Spinner;

    new-instance v3, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;

    invoke-direct {v3, p0, v2}, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;[Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 526
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeChannelSelector:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 528
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    const-string v1, "sdk-charge"

    new-instance v2, Lcom/wandoujia/p4/pay/fragment/PayFragment$6;

    invoke-direct {v2, p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment$6;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V

    new-instance v3, Lcom/wandoujia/p4/pay/fragment/PayFragment$7;

    invoke-direct {v3, p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment$7;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/wandoujia/p4/pay/PayImpl;->getPromptText(Ljava/lang/String;Lagu;Lagt;)V

    goto/16 :goto_0
.end method

.method private startSheznouLoop(Lcom/wandoujia/p4/pay/model/WandouOrder;Lcom/wandoujia/p4/pay/model/PayCallBack;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 656
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->loopbreak:Z

    .line 657
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/wandoujia/p4/pay/fragment/PayFragment$9;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;Lcom/wandoujia/p4/pay/model/WandouOrder;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 671
    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 559
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$8;

    invoke-direct {v1, p0, p1}, Lcom/wandoujia/p4/pay/fragment/PayFragment$8;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 571
    return-void
.end method


# virtual methods
.method public getPayCallback()Lcom/wandoujia/p4/pay/model/PayCallBack;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->paymentCallback:Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "order_desc"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->orderDesc:Ljava/lang/String;

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "order_price"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->orderPriceInFen:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "appkey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "seckey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    .line 125
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/PayImpl;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/wandoujia/p4/pay/PayImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    .line 126
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->currentOrder:Lcom/wandoujia/p4/pay/model/WandouOrder;

    .line 127
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Order price is invalid, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 133
    const v0, 0x7f03024d

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    .line 134
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 135
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->purchaseItemName:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->purchaseItemPrice:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->purchaseItemSupplement:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->otherPaymentsPanel:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeChannelSelector:Landroid/widget/Spinner;

    .line 141
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeAmountSelector:Landroid/widget/Spinner;

    .line 142
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->otherPaymentsPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->balanceValueText:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->bonusValueText:Landroid/widget/TextView;

    .line 145
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->promptText:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->amountLabelText:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->needRechargeValueText:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->wdbCountInput:Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->forgotPassword:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->payWandouCoinText:Landroid/widget/TextView;

    .line 151
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->payButton:Landroid/widget/Button;

    .line 152
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->payButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->shenzhouInput:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->shenzhouCardNumber:Landroid/widget/TextView;

    .line 155
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->shenzhouPassword:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->balancePayPasswordInput:Landroid/widget/EditText;

    .line 158
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->balancePayPasswordInput:Landroid/widget/EditText;

    new-instance v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$1;

    invoke-direct {v1, p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment$1;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 177
    invoke-direct {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->bindInfo()V

    .line 179
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$2;

    invoke-direct {v1, p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment$2;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public showSoftKeyboard(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 550
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 553
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 555
    :cond_1
    return-void
.end method
