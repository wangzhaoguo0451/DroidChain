.class public final Lcom/wandoujia/push2/NotifyUtils;
.super Ljava/lang/Object;
.source "NotifyUtils.java"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/wandoujia/push2/NotifyUtils;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/wandoujia/push2/NotifyUtils$NotificationState;
    .locals 8
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 46
    sget v0, Lcom/wandoujia/push2/NotifyUtils;->a:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 47
    sget-object v0, Lcom/wandoujia/push2/NotifyUtils$NotificationState;->UNKNOWN:Lcom/wandoujia/push2/NotifyUtils$NotificationState;

    .line 68
    :goto_0
    return-object v0

    .line 49
    :cond_0
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 53
    :try_start_0
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 54
    const-string v4, "checkOpNoThrow"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 57
    const-string v5, "OP_POST_NOTIFICATION"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 58
    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 65
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 66
    if-nez v0, :cond_1

    sget-object v0, Lcom/wandoujia/push2/NotifyUtils$NotificationState;->ALLOW:Lcom/wandoujia/push2/NotifyUtils$NotificationState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/wandoujia/push2/NotifyUtils$NotificationState;->DENY:Lcom/wandoujia/push2/NotifyUtils$NotificationState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    sget-object v0, Lcom/wandoujia/push2/NotifyUtils$NotificationState;->UNKNOWN:Lcom/wandoujia/push2/NotifyUtils$NotificationState;

    goto :goto_0
.end method
