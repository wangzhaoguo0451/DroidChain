.class public Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "VideoAppInstallDialogFragment.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/DialogInterface$OnClickListener;

.field private h:Landroid/content/DialogInterface$OnClickListener;

.field private i:Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;)Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;-><init>()V

    .line 44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 45
    const-string v2, "installType"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 46
    const-string v2, "packageName"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    iput-object p3, v0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 50
    iput-object p4, v0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 51
    iput-object p5, v0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->i:Landroid/content/DialogInterface$OnKeyListener;

    .line 52
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->a:Ljava/lang/String;

    .line 61
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->b:Ljava/lang/String;

    .line 62
    const-string v1, "installType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->d:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    .line 63
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->d:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    sget-object v1, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;->DIALOG_UPGRADE:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    if-ne v0, v1, :cond_3

    .line 67
    const v0, 0x7f0e0634

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->b:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->c:Ljava/lang/String;

    .line 68
    const v0, 0x7f0e0389

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->e:Ljava/lang/String;

    .line 69
    const v0, 0x7f0e062a

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->f:Ljava/lang/String;

    .line 75
    :cond_2
    :goto_1
    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->d:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    sget-object v1, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;->DIALOG_INSTALL:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    if-ne v0, v1, :cond_2

    .line 71
    const v0, 0x7f0e0633

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->b:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->c:Ljava/lang/String;

    .line 72
    const v0, 0x7f0e0388

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->e:Ljava/lang/String;

    .line 73
    const v0, 0x7f0e0629

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->f:Ljava/lang/String;

    goto :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    .line 80
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 81
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b022a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 83
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b022b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 85
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 86
    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    new-instance v1, Lhoq;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lhoq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lhoq;->a(Landroid/view/View;)Lhoq;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhoq;->a(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->i:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lhoq;->a(Landroid/content/DialogInterface$OnKeyListener;)Lhoq;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->h:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lhoq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    const v1, 0x7f0e0513

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lhoq;->a()Lhoj;

    move-result-object v0

    return-object v0
.end method
