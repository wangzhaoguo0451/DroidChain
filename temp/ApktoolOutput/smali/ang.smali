.class final Lang;
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
    .line 115
    iput-object p1, p0, Lang;->a:Land;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 118
    invoke-static {}, Land;->b()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "(%s) Invalidate Task"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lang;->a:Land;

    invoke-static {v0}, Land;->c(Land;)Z

    .line 120
    iget-object v0, p0, Lang;->a:Land;

    invoke-static {v0}, Land;->d(Land;)V

    .line 121
    return-void
.end method
