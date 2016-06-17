.class public final Lexx;
.super Ljava/lang/Object;
.source "CleanFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lexx;->a:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lexx;->a:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->c(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Leyk;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Leyk;->a(I)V

    .line 75
    iget-object v0, p0, Lexx;->a:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->e(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e016d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 76
    iget-object v0, p0, Lexx;->a:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->f(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)V

    .line 77
    return-void
.end method
