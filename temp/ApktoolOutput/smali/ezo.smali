.class public final Lezo;
.super Ljava/lang/Object;
.source "ALHomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lezo;->a:Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lezo;->a:Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;->b(Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lehx;->b(Landroid/view/View;)V

    .line 58
    return-void
.end method
