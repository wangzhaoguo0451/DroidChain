.class public abstract Lhal;
.super Ljava/lang/Object;
.source "BaseDataContext.java"


# instance fields
.field public final d:Landroid/content/Context;

.field public e:Lcom/wandoujia/ripple_framework/log/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lhal;->d:Landroid/content/Context;

    .line 171
    invoke-static {p1}, Lcom/wandoujia/base/config/GlobalConfig;->setAppContext(Landroid/content/Context;)V

    .line 172
    invoke-static {p1, p2}, Ld;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/config/GlobalConfig;->setAppRootDir(Ljava/lang/String;)V

    .line 173
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/Object;)V
.end method
