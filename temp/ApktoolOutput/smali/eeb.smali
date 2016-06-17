.class public final Leeb;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SpeedUpView.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/view/SpeedUpView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/view/SpeedUpView;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Leeb;->a:Lcom/wandoujia/launcher/view/SpeedUpView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Leeb;->a:Lcom/wandoujia/launcher/view/SpeedUpView;

    invoke-static {v0}, Lcom/wandoujia/launcher/view/SpeedUpView;->a(Lcom/wandoujia/launcher/view/SpeedUpView;)V

    .line 129
    return-void
.end method
