.class public final Lcpe;
.super Ljava/lang/Object;
.source "AppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .parameter

    .prologue
    .line 2007
    iput-object p1, p0, Lcpe;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2010
    invoke-static {}, Lcpu;->a()Lcpu;

    move-result-object v0

    iget-object v1, p0, Lcpe;->a:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcpu;->a(Ljava/util/Collection;)Z

    .line 2011
    return-void
.end method
