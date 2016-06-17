.class final Leyr;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SmoothAnimationHandler.java"


# instance fields
.field private synthetic a:Leyp;


# direct methods
.method constructor <init>(Leyp;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Leyr;->a:Leyp;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Leyr;->a:Leyp;

    iget-object v0, v0, Leyp;->a:Leyl;

    invoke-virtual {v0}, Leyl;->b()V

    .line 131
    return-void
.end method
