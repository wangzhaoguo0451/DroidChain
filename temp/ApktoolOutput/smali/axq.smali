.class final Laxq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Laxp;


# direct methods
.method constructor <init>(Laxp;)V
    .locals 0

    iput-object p1, p0, Laxq;->a:Laxp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Laxq;->a:Laxp;

    invoke-static {v0}, Laxp;->a(Laxp;)Laws;

    move-result-object v0

    invoke-virtual {v0}, Laws;->b()Lbkr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbkr;->a(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Laxq;->a:Laxp;

    invoke-virtual {v0}, Laxp;->b()Z

    move-result v0

    iget-object v1, p0, Laxq;->a:Laxp;

    invoke-static {v1}, Laxp;->b(Laxp;)J

    if-eqz v0, :cond_0

    iget-object v0, p0, Laxq;->a:Laxp;

    invoke-virtual {v0}, Laxp;->a()V

    goto :goto_0
.end method
