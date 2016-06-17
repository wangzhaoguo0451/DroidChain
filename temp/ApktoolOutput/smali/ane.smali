.class final Lane;
.super Ljava/lang/Object;
.source "AnimatedDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Land;


# direct methods
.method constructor <init>(Land;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lane;->a:Land;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lane;->a:Land;

    invoke-static {v0}, Land;->a(Land;)V

    .line 104
    return-void
.end method
