.class final Lehb;
.super Ljava/lang/Object;
.source "OnlineConfigController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lehd;

.field private synthetic b:Ljava/util/Map;


# direct methods
.method constructor <init>(Lehd;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lehb;->a:Lehd;

    iput-object p2, p0, Lehb;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lehb;->a:Lehd;

    iget-object v1, p0, Lehb;->b:Ljava/util/Map;

    if-eqz v1, :cond_0

    const-string v2, "launcher_apk_vc"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lehd;->a:Ldxo;

    invoke-virtual {v0}, Ldxo;->a()V

    .line 143
    :cond_0
    return-void
.end method
