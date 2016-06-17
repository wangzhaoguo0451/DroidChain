.class final Lcjb;
.super Ljava/lang/Object;
.source "AccountCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcja;


# direct methods
.method constructor <init>(Lcja;)V
    .locals 0
    .parameter

    .prologue
    .line 926
    iput-object p1, p0, Lcjb;->a:Lcja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcjb;->a:Lcja;

    iget-object v0, v0, Lcja;->c:Lcii;

    iget-object v0, v0, Lcii;->f:Lcmh;

    invoke-interface {v0}, Lcmh;->b()V

    .line 930
    return-void
.end method
