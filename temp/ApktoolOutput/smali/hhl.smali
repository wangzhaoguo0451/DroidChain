.class public abstract Lhhl;
.super Ljava/lang/Object;
.source "LoggingClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/wandoujia/ripple_framework/model/Model;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhhl;-><init>(Lcom/wandoujia/ripple_framework/model/Model;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lhhl;-><init>(Lcom/wandoujia/ripple_framework/model/Model;B)V

    .line 34
    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/ripple_framework/model/Model;B)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhhl;->b:J

    .line 41
    iput-object p1, p0, Lhhl;->a:Lcom/wandoujia/ripple_framework/model/Model;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/api/proto/Action;)Lhhl;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p4, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p4, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lhhl;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Ljava/lang/String;)Lhhl;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p4, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    iget-object v1, p0, Lhhl;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0, p1, v1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/model/Model;)Lcom/wandoujia/ripple_framework/log/Logger;

    .line 105
    return-object p0
.end method

.method public final a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Ljava/lang/String;)Lhhl;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lhhl;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Landroid/view/View;)Z
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lhhl;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0, p1}, Lhhl;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lhhl;->b:J

    .line 119
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    invoke-virtual {v0, p1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;)V

    goto :goto_0
.end method
