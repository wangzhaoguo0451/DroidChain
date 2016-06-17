.class public final Lezt;
.super Ljava/lang/Object;
.source "AppLauncherFragment.java"

# interfaces
.implements Lfad;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lezt;->a:Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lezt;->a:Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->b(Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/wandoujia/p4/tips/TipsType;

    const/4 v2, 0x0

    sget-object v3, Lcom/wandoujia/p4/tips/TipsType;->LOADING:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;[Lcom/wandoujia/p4/tips/TipsType;)V

    .line 200
    iget-object v0, p0, Lezt;->a:Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;

    invoke-static {}, Ld;->y()Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->a(Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;)V

    .line 201
    iget-object v0, p0, Lezt;->a:Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->c(Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;)V

    .line 202
    return-void
.end method
