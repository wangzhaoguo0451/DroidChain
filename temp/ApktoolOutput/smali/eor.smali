.class final Leor;
.super Ljava/lang/Object;
.source "CardShowLogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/view/View;

.field b:J

.field private synthetic c:Leoq;


# direct methods
.method constructor <init>(Leoq;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Leor;->c:Leoq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Leor;->c:Leoq;

    invoke-static {v0}, Leoq;->a(Leoq;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Leor;->c:Leoq;

    invoke-static {v0}, Leoq;->b(Leoq;)Ljava/util/List;

    move-result-object v0

    iget-wide v2, p0, Leor;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    iget-object v1, p0, Leor;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Leny;->a(Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Leor;->c:Leoq;

    invoke-static {v0}, Leoq;->b(Leoq;)Ljava/util/List;

    move-result-object v0

    iget-wide v2, p0, Leor;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
