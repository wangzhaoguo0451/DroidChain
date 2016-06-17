.class final Lanh;
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
    .line 124
    iput-object p1, p0, Lanh;->a:Land;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 127
    invoke-static {}, Land;->b()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "(%s) Watchdog Task"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lanh;->a:Land;

    invoke-static {v0}, Land;->e(Land;)V

    .line 129
    return-void
.end method
