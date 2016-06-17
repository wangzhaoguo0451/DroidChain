.class public final Leme;
.super Ljava/lang/Object;
.source "Locator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/lbs/Locator;


# direct methods
.method public constructor <init>(Lcom/wandoujia/lbs/Locator;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Leme;->a:Lcom/wandoujia/lbs/Locator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lcom/wandoujia/lbs/Locator;->b()Ljava/lang/String;

    .line 61
    :cond_0
    iget-object v0, p0, Leme;->a:Lcom/wandoujia/lbs/Locator;

    invoke-virtual {v0}, Lcom/wandoujia/lbs/Locator;->a()V

    .line 62
    return-void
.end method
