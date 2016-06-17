.class public final enum Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;
.super Ljava/lang/Enum;
.source "ProfileHistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;

.field public static final enum DELETE:Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;

.field public static final enum UPDATE:Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;->DELETE:Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;

    .line 49
    new-instance v0, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;->UPDATE:Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;

    sget-object v1, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;->DELETE:Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;->UPDATE:Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;->$VALUES:[Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;
    .locals 1
    .parameter

    .prologue
    .line 47
    const-class v0, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;->$VALUES:[Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/account/manager/ProfileHistoryManager$Event;

    return-object v0
.end method
