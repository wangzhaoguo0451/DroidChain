.class public final Lecf;
.super Ljava/lang/Object;
.source "FloatingRocketView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lecf;->a:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 115
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lecf;->a:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    invoke-static {v0, v1}, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 117
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    return-void
.end method
