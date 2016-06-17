.class public final Lgbl;
.super Ljava/lang/Object;
.source "MainSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lhoj;

.field private synthetic b:Lcom/wandoujia/p4/settings/MainSettingActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/settings/MainSettingActivity;Lhoj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lgbl;->b:Lcom/wandoujia/p4/settings/MainSettingActivity;

    iput-object p2, p0, Lgbl;->a:Lhoj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 623
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    const-string v1, "com.wandoujia.game_launcher"

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    const/4 v0, 0x0

    invoke-static {v0}, Lg;->d(Z)V

    .line 625
    invoke-static {}, Ledn;->a()V

    .line 629
    :goto_0
    iget-object v0, p0, Lgbl;->b:Lcom/wandoujia/p4/settings/MainSettingActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->c(Lcom/wandoujia/p4/settings/MainSettingActivity;)V

    .line 630
    iget-object v0, p0, Lgbl;->a:Lhoj;

    invoke-virtual {v0}, Lhoj;->dismiss()V

    .line 631
    return-void

    .line 627
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lebw;->a(Z)V

    goto :goto_0
.end method
