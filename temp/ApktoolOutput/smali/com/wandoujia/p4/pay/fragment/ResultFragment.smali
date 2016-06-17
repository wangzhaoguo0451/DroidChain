.class public Lcom/wandoujia/p4/pay/fragment/ResultFragment;
.super Landroid/support/v4/app/Fragment;
.source "ResultFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ARG_KEY_MESSAGE:Ljava/lang/String; = "result_message"

.field private static final ARG_KEY_TITLE:Ljava/lang/String; = "result_title"

.field private static final ARG_KEY_TYPE:Ljava/lang/String; = "result_type"


# instance fields
.field private backButton:Landroid/widget/Button;

.field private contactButton:Landroid/widget/Button;

.field private localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

.field private message:Ljava/lang/String;

.field private messageView:Landroid/widget/TextView;

.field private onFinishListener:Lcom/wandoujia/p4/pay/fragment/ResultFragment$OnFinishListener;

.field private payImpl:Lcom/wandoujia/p4/pay/PayImpl;

.field private rootView:Landroid/view/View;

.field private title:Ljava/lang/String;

.field private titleView:Landroid/widget/TextView;

.field private type:Lcom/wandoujia/p4/pay/model/PayResults;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)Lcom/wandoujia/p4/pay/PayImpl;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->queryResultMessage()V

    return-void
.end method

.method static synthetic access$400(Lcom/wandoujia/p4/pay/fragment/ResultFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->toast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->messageView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)Lcom/wandoujia/p4/pay/model/PayResults;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->type:Lcom/wandoujia/p4/pay/model/PayResults;

    return-object v0
.end method

.method static synthetic access$800(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->contactButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->backButton:Landroid/widget/Button;

    return-object v0
.end method

.method private static newInstance(ILjava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/pay/fragment/ResultFragment$OnFinishListener;)Lcom/wandoujia/p4/pay/fragment/ResultFragment;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    new-instance v0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;-><init>()V

    .line 50
    iput-object p3, v0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->onFinishListener:Lcom/wandoujia/p4/pay/fragment/ResultFragment$OnFinishListener;

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 52
    const-string v2, "result_type"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    const-string v2, "result_message"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v2, "result_title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object v0
.end method

.method private queryResultMessage()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->resultUrl:Ljava/lang/String;

    new-instance v2, Lcom/wandoujia/p4/pay/fragment/ResultFragment$4;

    invoke-direct {v2, p0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment$4;-><init>(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/p4/pay/PayImpl;->queryOrderResult(Ljava/lang/String;Lcom/wandoujia/p4/pay/model/CallBack;)V

    .line 209
    return-void
.end method

.method public static showResult(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/pay/fragment/ResultFragment$OnFinishListener;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-static {}, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->values()[Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    move-result-object v0

    rem-int/lit8 v1, p1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/wandoujia/p4/pay/PayImpl;->setFinishStatus(Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;)V

    .line 65
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    const v1, 0x7f0c0221

    invoke-static {p1, p2, p3, p4}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/pay/fragment/ResultFragment$OnFinishListener;)Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->b()I

    goto :goto_0
.end method

.method private toast(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/wandoujia/p4/pay/fragment/ResultFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/wandoujia/p4/pay/fragment/ResultFragment$3;-><init>(Lcom/wandoujia/p4/pay/fragment/ResultFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 153
    const v1, 0x7f0c04eb

    if-eq v1, v0, :cond_0

    const v1, 0x7f0c04ea

    if-ne v1, v0, :cond_1

    .line 154
    :cond_0
    const-string v0, "click"

    const-string v1, "button"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->onFinishListener:Lcom/wandoujia/p4/pay/fragment/ResultFragment$OnFinishListener;

    invoke-interface {v0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment$OnFinishListener;->onFinish()V

    .line 157
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lcom/wandoujia/p4/pay/model/PayResults;->values()[Lcom/wandoujia/p4/pay/model/PayResults;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->type:Lcom/wandoujia/p4/pay/model/PayResults;

    .line 78
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result_message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->message:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->title:Ljava/lang/String;

    .line 81
    :cond_0
    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    .line 82
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/PayImpl;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/wandoujia/p4/pay/PayImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;

    .line 83
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 89
    const v0, 0x7f030251

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->rootView:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0c04e7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->titleView:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0c04e8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->messageView:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0c04ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->contactButton:Landroid/widget/Button;

    .line 93
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0c04eb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->backButton:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getNeedPassword()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->titleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->titleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->type:Lcom/wandoujia/p4/pay/model/PayResults;

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/model/PayResults;->iconId()I

    move-result v3

    invoke-virtual {v0, v3, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 97
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->messageView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->message:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->contactButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->type:Lcom/wandoujia/p4/pay/model/PayResults;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/PayResults;->withContact()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->contactButton:Landroid/widget/Button;

    new-instance v1, Lcom/wandoujia/p4/pay/fragment/ResultFragment$1;

    invoke-direct {v1, p0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment$1;-><init>(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->backButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    :goto_1
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->rootView:Landroid/view/View;

    return-object v0

    :cond_0
    move v0, v2

    .line 98
    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0c04e9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0c04ec

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/p4/pay/fragment/ResultFragment$2;

    invoke-direct {v1, p0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment$2;-><init>(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
