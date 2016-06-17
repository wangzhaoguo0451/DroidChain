.class final Lcmr;
.super Ljava/lang/Object;
.source "AccountOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcmp;


# direct methods
.method constructor <init>(Lcmp;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcmr;->a:Lcmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcmr;->a:Lcmp;

    iget-object v0, v0, Lcmp;->a:Lcmg;

    invoke-interface {v0}, Lcmg;->a()V

    .line 90
    return-void
.end method
