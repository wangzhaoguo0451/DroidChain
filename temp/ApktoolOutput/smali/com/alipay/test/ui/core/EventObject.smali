.class public final enum Lcom/alipay/test/ui/core/EventObject;
.super Ljava/lang/Enum;
.source "EventObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/test/ui/core/EventObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/test/ui/core/EventObject;

.field public static final enum OnAbort:Lcom/alipay/test/ui/core/EventObject;

.field public static final enum OnCreate:Lcom/alipay/test/ui/core/EventObject;

.field public static final enum OnDestroy:Lcom/alipay/test/ui/core/EventObject;

.field public static final enum OnDialogShown:Lcom/alipay/test/ui/core/EventObject;

.field public static final enum OnException:Lcom/alipay/test/ui/core/EventObject;

.field public static final enum OnPause:Lcom/alipay/test/ui/core/EventObject;

.field public static final enum OnPopupWindowShown:Lcom/alipay/test/ui/core/EventObject;

.field public static final enum OnResume:Lcom/alipay/test/ui/core/EventObject;

.field public static final enum OnToastShown:Lcom/alipay/test/ui/core/EventObject;

.field public static final enum Others:Lcom/alipay/test/ui/core/EventObject;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/alipay/test/ui/core/EventObject;

    const-string v1, "OnCreate"

    invoke-direct {v0, v1, v3}, Lcom/alipay/test/ui/core/EventObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/test/ui/core/EventObject;->OnCreate:Lcom/alipay/test/ui/core/EventObject;

    .line 6
    new-instance v0, Lcom/alipay/test/ui/core/EventObject;

    const-string v1, "OnResume"

    invoke-direct {v0, v1, v4}, Lcom/alipay/test/ui/core/EventObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/test/ui/core/EventObject;->OnResume:Lcom/alipay/test/ui/core/EventObject;

    .line 8
    new-instance v0, Lcom/alipay/test/ui/core/EventObject;

    const-string v1, "OnPause"

    invoke-direct {v0, v1, v5}, Lcom/alipay/test/ui/core/EventObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/test/ui/core/EventObject;->OnPause:Lcom/alipay/test/ui/core/EventObject;

    .line 10
    new-instance v0, Lcom/alipay/test/ui/core/EventObject;

    const-string v1, "OnDestroy"

    invoke-direct {v0, v1, v6}, Lcom/alipay/test/ui/core/EventObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/test/ui/core/EventObject;->OnDestroy:Lcom/alipay/test/ui/core/EventObject;

    .line 12
    new-instance v0, Lcom/alipay/test/ui/core/EventObject;

    const-string v1, "OnException"

    invoke-direct {v0, v1, v7}, Lcom/alipay/test/ui/core/EventObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/test/ui/core/EventObject;->OnException:Lcom/alipay/test/ui/core/EventObject;

    .line 14
    new-instance v0, Lcom/alipay/test/ui/core/EventObject;

    const-string v1, "OnDialogShown"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/test/ui/core/EventObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/test/ui/core/EventObject;->OnDialogShown:Lcom/alipay/test/ui/core/EventObject;

    .line 16
    new-instance v0, Lcom/alipay/test/ui/core/EventObject;

    const-string v1, "OnAbort"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alipay/test/ui/core/EventObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/test/ui/core/EventObject;->OnAbort:Lcom/alipay/test/ui/core/EventObject;

    .line 18
    new-instance v0, Lcom/alipay/test/ui/core/EventObject;

    const-string v1, "OnPopupWindowShown"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alipay/test/ui/core/EventObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/test/ui/core/EventObject;->OnPopupWindowShown:Lcom/alipay/test/ui/core/EventObject;

    .line 20
    new-instance v0, Lcom/alipay/test/ui/core/EventObject;

    const-string v1, "OnToastShown"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alipay/test/ui/core/EventObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/test/ui/core/EventObject;->OnToastShown:Lcom/alipay/test/ui/core/EventObject;

    .line 22
    new-instance v0, Lcom/alipay/test/ui/core/EventObject;

    const-string v1, "Others"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alipay/test/ui/core/EventObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/test/ui/core/EventObject;->Others:Lcom/alipay/test/ui/core/EventObject;

    .line 3
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/alipay/test/ui/core/EventObject;

    sget-object v1, Lcom/alipay/test/ui/core/EventObject;->OnCreate:Lcom/alipay/test/ui/core/EventObject;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/test/ui/core/EventObject;->OnResume:Lcom/alipay/test/ui/core/EventObject;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/test/ui/core/EventObject;->OnPause:Lcom/alipay/test/ui/core/EventObject;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/test/ui/core/EventObject;->OnDestroy:Lcom/alipay/test/ui/core/EventObject;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/test/ui/core/EventObject;->OnException:Lcom/alipay/test/ui/core/EventObject;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/test/ui/core/EventObject;->OnDialogShown:Lcom/alipay/test/ui/core/EventObject;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/test/ui/core/EventObject;->OnAbort:Lcom/alipay/test/ui/core/EventObject;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/test/ui/core/EventObject;->OnPopupWindowShown:Lcom/alipay/test/ui/core/EventObject;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/test/ui/core/EventObject;->OnToastShown:Lcom/alipay/test/ui/core/EventObject;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/test/ui/core/EventObject;->Others:Lcom/alipay/test/ui/core/EventObject;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/test/ui/core/EventObject;->ENUM$VALUES:[Lcom/alipay/test/ui/core/EventObject;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/test/ui/core/EventObject;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alipay/test/ui/core/EventObject;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/test/ui/core/EventObject;

    return-object v0
.end method

.method public static values()[Lcom/alipay/test/ui/core/EventObject;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/test/ui/core/EventObject;->ENUM$VALUES:[Lcom/alipay/test/ui/core/EventObject;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/test/ui/core/EventObject;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
