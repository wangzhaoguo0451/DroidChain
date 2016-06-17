.class public final Laia;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field public static a:J

.field public static b:J

.field private static c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 394
    sput-object v0, Laia;->c:Landroid/util/SparseArray;

    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 395
    sget-object v0, Laia;->c:Landroid/util/SparseArray;

    const-string v1, "GPRS"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 396
    sget-object v0, Laia;->c:Landroid/util/SparseArray;

    const-string v1, "EDGE"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 397
    sget-object v0, Laia;->c:Landroid/util/SparseArray;

    const-string v1, "UMTS"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 398
    sget-object v0, Laia;->c:Landroid/util/SparseArray;

    const-string v1, "CDMA"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 399
    sget-object v0, Laia;->c:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "EVDO_0"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 400
    sget-object v0, Laia;->c:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "EVDO_A"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 401
    sget-object v0, Laia;->c:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "1xRTT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 402
    sget-object v0, Laia;->c:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "HSDPA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 403
    sget-object v0, Laia;->c:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const-string v2, "HSUPA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 404
    sget-object v0, Laia;->c:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string v2, "HSPA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 405
    sget-object v0, Laia;->c:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const-string v2, "IDEN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 406
    sget-object v0, Laia;->c:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const-string v2, "EVDO_B"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 407
    sget-object v0, Laia;->c:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const-string v2, "LTE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 408
    sget-object v0, Laia;->c:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const-string v2, "EHRPD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 409
    sget-object v0, Laia;->c:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const-string v2, "HSPAP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 414
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v3

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v4

    const-string v1, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    aput-object v1, v0, v5

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v1, v0, v6

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    return-void
.end method
