.class public Lcom/wandoujia/p4/community/AccessibilityDispatcher;
.super Landroid/accessibilityservice/AccessibilityService;
.source "AccessibilityDispatcher.java"


# static fields
.field private static a:J

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldd;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhgl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/wandoujia/p4/community/AccessibilityDispatcher;->a:J

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wandoujia/p4/community/AccessibilityDispatcher;->b:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wandoujia/p4/community/AccessibilityDispatcher;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    .line 46
    sget-object v0, Lcom/wandoujia/p4/community/AccessibilityDispatcher;->c:Ljava/util/List;

    new-instance v1, Lhgk;

    invoke-direct {v1}, Lhgk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method private static a()V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/wandoujia/p4/community/AccessibilityDispatcher;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .parameter

    .prologue
    .line 51
    sget-object v0, Lcom/wandoujia/p4/community/AccessibilityDispatcher;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhgl;

    .line 52
    invoke-interface {v0, p1}, Lhgl;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->x()J

    move-result-wide v2

    .line 57
    sub-long v2, v0, v2

    sget-wide v4, Lcom/wandoujia/p4/community/AccessibilityDispatcher;->a:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 58
    invoke-static {v0, v1}, Lcom/wandoujia/p4/configs/Config;->d(J)V

    .line 60
    :cond_1
    return-void
.end method

.method public onInterrupt()V
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/wandoujia/p4/community/AccessibilityDispatcher;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method protected onServiceConnected()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 74
    invoke-static {}, Lcom/wandoujia/p4/community/AccessibilityDispatcher;->a()V

    .line 75
    sget-object v0, Lcom/wandoujia/p4/community/AccessibilityDispatcher;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhgl;

    .line 76
    invoke-interface {v0}, Lhgl;->b()V

    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .parameter

    .prologue
    .line 64
    sget-object v0, Lcom/wandoujia/p4/community/AccessibilityDispatcher;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhgl;

    .line 65
    invoke-interface {v0}, Lhgl;->a()V

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {}, Lcom/wandoujia/p4/community/AccessibilityDispatcher;->a()V

    .line 68
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
