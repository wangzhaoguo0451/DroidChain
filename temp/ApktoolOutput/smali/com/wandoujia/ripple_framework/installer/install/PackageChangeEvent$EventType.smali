.class public final enum Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;
.super Ljava/lang/Enum;
.source "PackageChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

.field public static final enum ADD:Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

.field public static final enum CHANGE:Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

.field public static final enum REMOVE:Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

.field public static final enum REPLACE:Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;->ADD:Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    .line 12
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;->REMOVE:Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    .line 13
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    const-string v1, "REPLACE"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;->REPLACE:Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    .line 14
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    const-string v1, "CHANGE"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;->CHANGE:Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;->ADD:Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;->REMOVE:Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;->REPLACE:Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;->CHANGE:Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;->$VALUES:[Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;
    .locals 1
    .parameter

    .prologue
    .line 10
    const-class v0, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;->$VALUES:[Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    invoke-virtual {v0}, [Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    return-object v0
.end method
