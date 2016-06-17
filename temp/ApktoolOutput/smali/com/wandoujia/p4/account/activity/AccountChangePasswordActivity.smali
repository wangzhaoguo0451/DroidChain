.class public Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;
.super Lcom/wandoujia/p4/account/activity/AccountBaseActivity;
.source "AccountChangePasswordActivity.java"


# instance fields
.field public c:Landroid/os/Handler;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/Button;

.field private g:Ljava/util/Timer;

.field private h:Ljava/util/TimerTask;

.field private i:Ljava/lang/String;

.field private final j:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/wandoujia/p4/account/activity/AccountBaseActivity;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->c:Landroid/os/Handler;

    .line 54
    new-instance v0, Lesv;

    invoke-direct {v0, p0}, Lesv;-><init>(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)V

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->j:Landroid/text/TextWatcher;

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->g:Ljava/util/Timer;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->h:Ljava/util/TimerTask;

    return-object p1
.end method

.method public static synthetic b(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Landroid/text/TextWatcher;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->j:Landroid/text/TextWatcher;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->g:Ljava/util/Timer;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Ljava/util/TimerTask;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->h:Ljava/util/TimerTask;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 0

    .prologue
    .line 195
    if-eqz p0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->finish()V

    .line 198
    :cond_0
    return-void
.end method

.method final a(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 202
    const v0, 0x7f0e002b

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->a(Ljava/lang/String;Lcom/wandoujia/account/dto/WandouResponse;)V

    .line 203
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/wandoujia/p4/account/activity/AccountBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->setContentView(I)V

    .line 50
    const v0, 0x7f0e002a

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->setTitle(I)V

    .line 51
    const v0, 0x7f0c00da

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f0c00db

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f0c00d4

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phoenix.intent.extra.ACCOUNT_PASSCODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->j:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->d:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->f:Landroid/widget/Button;

    new-instance v1, Lesx;

    invoke-direct {v1, p0}, Lesx;-><init>(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Letb;

    invoke-direct {v0, p0}, Letb;-><init>(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)V

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->c:Landroid/os/Handler;

    .line 52
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->d:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method
