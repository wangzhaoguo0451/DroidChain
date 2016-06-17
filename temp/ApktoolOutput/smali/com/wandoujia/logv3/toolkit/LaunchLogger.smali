.class public final Lcom/wandoujia/logv3/toolkit/LaunchLogger;
.super Ljava/lang/Object;
.source "LaunchLogger.java"


# instance fields
.field public a:Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

.field public b:Ljava/lang/String;

.field public c:J

.field private d:Lenm;


# direct methods
.method public constructor <init>(Lenm;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->d:Lenm;

    .line 65
    sget-object v0, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;->NOT_LAUNCH:Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    iput-object v0, p0, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->a:Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->b:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private static c(Landroid/app/Activity;Landroid/content/Intent;Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;)Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;-><init>()V

    .line 212
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;->activity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;->action(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;->data(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;->reason(Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;)Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;

    .line 216
    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;->build()Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->b:Ljava/lang/String;

    .line 176
    iput-object p2, p0, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->a:Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    .line 177
    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/content/Intent;Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->d:Lenm;

    invoke-interface {v0, p2}, Lenm;->a(Landroid/content/Intent;)Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->source:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->source:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->DEFAULT_SOURCE:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    if-ne v0, v1, :cond_1

    .line 186
    :cond_0
    const/4 v0, 0x0

    .line 190
    :goto_0
    return v0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->d:Lenm;

    iget-object v1, p0, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->d:Lenm;

    invoke-interface {v1, p2}, Lenm;->a(Landroid/content/Intent;)Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    move-result-object v1

    invoke-static {p1, p2, p3}, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->c(Landroid/app/Activity;Landroid/content/Intent;Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;)Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lenm;->a(Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;)V

    .line 190
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Landroid/app/Activity;Landroid/content/Intent;Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->d:Lenm;

    iget-object v1, p0, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->d:Lenm;

    invoke-interface {v1, p2}, Lenm;->a(Landroid/content/Intent;)Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    move-result-object v1

    invoke-static {p1, p2, p3}, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->c(Landroid/app/Activity;Landroid/content/Intent;Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;)Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lenm;->a(Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;)V

    .line 196
    return-void
.end method
