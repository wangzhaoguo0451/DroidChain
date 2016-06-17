.class final Lbtm;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissTouchListener.java"


# instance fields
.field private synthetic a:Lbtl;


# direct methods
.method constructor <init>(Lbtl;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lbtm;->a:Lbtl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lbtm;->a:Lbtl;

    invoke-static {v0}, Lbtl;->a(Lbtl;)V

    .line 158
    return-void
.end method
