.class final Lah;
.super Landroid/transition/Transition$EpicenterCallback;
.source "FragmentTransitionCompat21.java"


# instance fields
.field private synthetic a:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lah;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lah;->a:Landroid/graphics/Rect;

    return-object v0
.end method
