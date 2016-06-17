.class public Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "QuitDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ARG_KEY_MESSAGE:Ljava/lang/String; = "quit_message"

.field private static final ARG_KEY_TITLE:Ljava/lang/String; = "quit_title"


# instance fields
.field private message:Ljava/lang/String;

.field private quitCallback:Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment$OnQuitCallback;

.field private rootView:Landroid/view/View;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private static newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment$OnQuitCallback;)Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    new-instance v0, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;-><init>()V

    .line 37
    iput-object p2, v0, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->quitCallback:Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment$OnQuitCallback;

    .line 38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 39
    const-string v2, "quit_message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v2, "quit_title"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v0
.end method

.method public static showQuitDialog(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment$OnQuitCallback;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-static {p1, p2, p3}, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment$OnQuitCallback;)Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    const-string v2, "paysdk_quit_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->show(Ls;Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 83
    const v1, 0x7f0c04e3

    if-ne v1, v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->quitCallback:Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment$OnQuitCallback;

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "cancel_pay"

    const-string v1, "yes"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/LogEvent;->click(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->quitCallback:Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment$OnQuitCallback;

    invoke-interface {v0}, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment$OnQuitCallback;->onConfirmed()Z

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const v1, 0x7f0c04e2

    if-ne v1, v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->quitCallback:Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment$OnQuitCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->quitCallback:Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment$OnQuitCallback;

    invoke-interface {v0}, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment$OnQuitCallback;->onCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    :cond_2
    const-string v0, "cancel_pay"

    const-string v1, "no"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/LogEvent;->click(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->dismiss()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "quit_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->title:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "quit_message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->message:Ljava/lang/String;

    .line 58
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 76
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    const v0, 0x7f03024f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->rootView:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment;->rootView:Landroid/view/View;

    return-object v0
.end method
