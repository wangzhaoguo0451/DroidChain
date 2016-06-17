.class public final Ldzn;
.super Ljava/lang/Object;
.source "DailyRecommendFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Ldzn;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 80
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Ldzn;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->a()V

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/wandoujia/game_launcher/lib/R$string;->toast_no_network:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
