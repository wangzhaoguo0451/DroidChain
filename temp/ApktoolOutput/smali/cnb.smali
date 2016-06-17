.class public final Lcnb;
.super Ljava/lang/Object;
.source "LogoutRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcmm;


# direct methods
.method public constructor <init>(Lcmm;)V
    .locals 0
    .parameter

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcnb;->a:Lcmm;

    .line 11
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 15
    iget-object v0, p0, Lcnb;->a:Lcmm;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcnb;->a:Lcmm;

    invoke-static {}, Lchv;->x()V

    iget-object v0, v0, Lcmm;->a:Lcii;

    invoke-static {}, Lchv;->D()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcii;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcii;->a(Z)V

    .line 18
    :cond_0
    return-void
.end method
