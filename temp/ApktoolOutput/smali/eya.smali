.class public final Leya;
.super Ljava/lang/Object;
.source "CleanFragment.java"

# interfaces
.implements Leys;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Leya;->a:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Leya;->a:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->a(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->setProgress(I)V

    .line 150
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 151
    iget-object v0, p0, Leya;->a:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->c(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Leyk;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Leyk;->a(I)V

    .line 152
    iget-object v0, p0, Leya;->a:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->e(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e0171

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    iget-object v0, p0, Leya;->a:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->b(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Leya;->a:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->g(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Leyg;

    move-result-object v0

    invoke-static {v0}, Leyf;->a(Leyg;)V

    .line 156
    :cond_0
    return-void
.end method
