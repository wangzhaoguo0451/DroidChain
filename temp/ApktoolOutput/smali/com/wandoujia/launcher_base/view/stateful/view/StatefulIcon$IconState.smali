.class public final enum Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;
.super Ljava/lang/Enum;
.source "StatefulIcon.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

.field public static final enum COMPLETE:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

.field public static final enum DOWNLOADING:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

.field public static final enum PAUSING:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    new-instance v0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;->DOWNLOADING:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

    new-instance v0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

    const-string v1, "PAUSING"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;->PAUSING:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

    new-instance v0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;->COMPLETE:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

    sget-object v1, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;->DOWNLOADING:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;->PAUSING:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;->COMPLETE:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;->$VALUES:[Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

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
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;
    .locals 1
    .parameter

    .prologue
    .line 117
    const-class v0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;->$VALUES:[Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

    return-object v0
.end method
