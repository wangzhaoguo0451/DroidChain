.class public final Lezn;
.super Ljava/lang/Object;
.source "ALHomeFragment.java"

# interfaces
.implements Lego;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lezn;->a:Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lezn;->a:Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;->a(Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "apps/app_launcher/pages/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ld;->a(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld;->q(Landroid/content/Context;)V

    .line 45
    return-void
.end method
