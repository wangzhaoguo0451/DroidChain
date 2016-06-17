.class final Lcix;
.super Ljava/lang/Object;
.source "AccountCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcir;


# direct methods
.method constructor <init>(Lcir;)V
    .locals 0
    .parameter

    .prologue
    .line 1043
    iput-object p1, p0, Lcix;->a:Lcir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcix;->a:Lcir;

    iget-object v0, v0, Lcir;->c:Lcii;

    iget-object v0, v0, Lcii;->f:Lcmh;

    invoke-interface {v0}, Lcmh;->b()V

    .line 1047
    return-void
.end method
