.class public final Lbpz;
.super Lbps;
.source "RSSExpandedReader.java"


# static fields
.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[[I

.field private static final k:[[I

.field private static final l:[[I


# instance fields
.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbpx;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbpy;",
            ">;"
        }
    .end annotation
.end field

.field private final o:[I

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/16 v3, 0x8

    .line 54
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lbpz;->g:[I

    .line 55
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lbpz;->h:[I

    .line 56
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Lbpz;->i:[I

    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    sput-object v0, Lbpz;->j:[[I

    .line 67
    const/16 v0, 0x17

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v3

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    sput-object v0, Lbpz;->k:[[I

    .line 100
    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v6, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v7, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_22

    aput-object v1, v0, v6

    new-array v1, v5, [I

    fill-array-data v1, :array_23

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_24

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_25

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_28

    aput-object v1, v0, v3

    const/16 v1, 0x9

    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    sput-object v0, Lbpz;->l:[[I

    return-void

    .line 54
    :array_0
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 55
    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0xcct 0x0t 0x0t 0x0t
    .end array-data

    .line 56
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5ct 0x1t 0x0t 0x0t
        0x6ct 0x5t 0x0t 0x0t
        0x84t 0xbt 0x0t 0x0t
        0x94t 0xft 0x0t 0x0t
    .end array-data

    .line 58
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 67
    :array_9
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0xbdt 0x0t 0x0t 0x0t
        0x91t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x8ct 0x0t 0x0t 0x0t
        0xd1t 0x0t 0x0t 0x0t
        0xcdt 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0xc1t 0x0t 0x0t 0x0t
        0x9dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x93t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
        0xabt 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x3et 0x0t 0x0t 0x0t
        0xbat 0x0t 0x0t 0x0t
        0x88t 0x0t 0x0t 0x0t
        0xc5t 0x0t 0x0t 0x0t
        0xa9t 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x84t 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0xb9t 0x0t 0x0t 0x0t
        0x85t 0x0t 0x0t 0x0t
        0xbct 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x71t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xadt 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x57t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0x96t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x9et 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x9ct 0x0t 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0x2et 0x0t 0x0t 0x0t
        0x8at 0x0t 0x0t 0x0t
        0xcbt 0x0t 0x0t 0x0t
        0xbbt 0x0t 0x0t 0x0t
        0x8bt 0x0t 0x0t 0x0t
        0xcet 0x0t 0x0t 0x0t
        0xc4t 0x0t 0x0t 0x0t
        0xa6t 0x0t 0x0t 0x0t
    .end array-data

    :array_12
    .array-data 0x4
        0x4ct 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x99t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x9bt 0x0t 0x0t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0x2bt 0x0t 0x0t 0x0t
        0x81t 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x77t 0x0t 0x0t 0x0t
        0x92t 0x0t 0x0t 0x0t
    .end array-data

    :array_14
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0xb1t 0x0t 0x0t 0x0t
    .end array-data

    :array_15
    .array-data 0x4
        0x6dt 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x89t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xb2t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0xa4t 0x0t 0x0t 0x0t
    .end array-data

    :array_16
    .array-data 0x4
        0x46t 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
        0xd0t 0x0t 0x0t 0x0t
        0xcat 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0xb3t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
    .end array-data

    :array_17
    .array-data 0x4
        0x86t 0x0t 0x0t 0x0t
        0xbft 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0xcct 0x0t 0x0t 0x0t
        0xbet 0x0t 0x0t 0x0t
    .end array-data

    :array_18
    .array-data 0x4
        0x94t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0xc6t 0x0t 0x0t 0x0t
        0xact 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_19
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0xa2t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0x9at 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
    .end array-data

    :array_1a
    .array-data 0x4
        0x78t 0x0t 0x0t 0x0t
        0x95t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0xa7t 0x0t 0x0t 0x0t
    .end array-data

    :array_1b
    .array-data 0x4
        0x4ft 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
        0xcft 0x0t 0x0t 0x0t
        0xc7t 0x0t 0x0t 0x0t
        0xaft 0x0t 0x0t 0x0t
    .end array-data

    :array_1c
    .array-data 0x4
        0x67t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x83t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
        0x7ct 0x0t 0x0t 0x0t
    .end array-data

    :array_1d
    .array-data 0x4
        0xa1t 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0xb7t 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0xaat 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x9ft 0x0t 0x0t 0x0t
    .end array-data

    :array_1e
    .array-data 0x4
        0x37t 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
        0x49t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    :array_1f
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
        0xc2t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0xaet 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x59t 0x0t 0x0t 0x0t
    .end array-data

    .line 100
    :array_20
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_21
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_22
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_23
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_24
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_25
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_26
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_27
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_28
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_29
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lbps;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lbpz;->m:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbpz;->n:Ljava/util/List;

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lbpz;->o:[I

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbpz;->p:Z

    return-void
.end method

.method private static a(Ljava/util/List;)Lbnr;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbpx;",
            ">;)",
            "Lbnr;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/16 v4, 0xb

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 367
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpx;

    iget-object v0, v0, Lbpx;->b:Lbpt;

    if-nez v0, :cond_a

    add-int/lit8 v0, v1, -0x1

    :goto_0
    mul-int/lit8 v0, v0, 0xc

    new-instance v8, Lbnz;

    invoke-direct {v8, v0}, Lbnz;-><init>(I)V

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpx;

    iget-object v0, v0, Lbpx;->b:Lbpt;

    iget v5, v0, Lbpt;->a:I

    move v1, v4

    move v0, v7

    :goto_1
    if-ltz v1, :cond_1

    shl-int v2, v3, v1

    and-int/2addr v2, v5

    if-eqz v2, :cond_0

    invoke-virtual {v8, v0}, Lbnz;->b(I)V

    :cond_0
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_1
    move v2, v3

    move v1, v0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpx;

    iget-object v5, v0, Lbpx;->a:Lbpt;

    iget v9, v5, Lbpt;->a:I

    move v5, v4

    :goto_3
    if-ltz v5, :cond_3

    shl-int v6, v3, v5

    and-int/2addr v6, v9

    if-eqz v6, :cond_2

    invoke-virtual {v8, v1}, Lbnz;->b(I)V

    :cond_2
    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v1, v5, -0x1

    move v5, v1

    move v1, v6

    goto :goto_3

    :cond_3
    iget-object v5, v0, Lbpx;->b:Lbpt;

    if-eqz v5, :cond_5

    iget-object v0, v0, Lbpx;->b:Lbpt;

    iget v6, v0, Lbpt;->a:I

    move v0, v1

    move v1, v4

    :goto_4
    if-ltz v1, :cond_6

    shl-int v5, v3, v1

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    invoke-virtual {v8, v0}, Lbnz;->b(I)V

    :cond_4
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v5

    goto :goto_4

    :cond_5
    move v0, v1

    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2

    .line 369
    :cond_7
    invoke-virtual {v8, v3}, Lbnz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lbqg;

    invoke-direct {v0, v8}, Lbqg;-><init>(Lbnz;)V

    .line 370
    :goto_5
    invoke-virtual {v0}, Lbqj;->a()Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpx;

    iget-object v0, v0, Lbpx;->c:Lbpu;

    iget-object v2, v0, Lbpu;->c:[Lbns;

    .line 373
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpx;

    iget-object v0, v0, Lbpx;->c:Lbpu;

    iget-object v0, v0, Lbpu;->c:[Lbns;

    .line 375
    new-instance v4, Lbnr;

    const/4 v5, 0x0

    new-array v6, v11, [Lbns;

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    aget-object v2, v2, v3

    aput-object v2, v6, v3

    aget-object v2, v0, v7

    aput-object v2, v6, v10

    const/4 v2, 0x3

    aget-object v0, v0, v3

    aput-object v0, v6, v2

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v4, v1, v5, v6, v0}, Lbnr;-><init>(Ljava/lang/String;[B[Lbns;Lcom/google/zxing/BarcodeFormat;)V

    return-object v4

    .line 369
    :cond_8
    invoke-virtual {v8, v10}, Lbnz;->a(I)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lbqk;

    invoke-direct {v0, v8}, Lbqk;-><init>(Lbnz;)V

    goto :goto_5

    :cond_9
    invoke-static {v8, v3, v11}, Lbqr;->a(Lbnz;II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x5

    invoke-static {v8, v3, v0}, Lbqr;->a(Lbnz;II)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    const/4 v0, 0x7

    invoke-static {v8, v3, v0}, Lbqr;->a(Lbnz;II)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown decoder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lbqa;

    invoke-direct {v0, v8}, Lbqa;-><init>(Lbnz;)V

    goto :goto_5

    :pswitch_1
    new-instance v0, Lbqb;

    invoke-direct {v0, v8}, Lbqb;-><init>(Lbnz;)V

    goto :goto_5

    :pswitch_2
    new-instance v0, Lbqc;

    invoke-direct {v0, v8}, Lbqc;-><init>(Lbnz;)V

    goto/16 :goto_5

    :pswitch_3
    new-instance v0, Lbqd;

    invoke-direct {v0, v8}, Lbqd;-><init>(Lbnz;)V

    goto/16 :goto_5

    :pswitch_4
    new-instance v0, Lbqe;

    const-string v1, "310"

    const-string v2, "11"

    invoke-direct {v0, v8, v1, v2}, Lbqe;-><init>(Lbnz;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_5
    new-instance v0, Lbqe;

    const-string v1, "320"

    const-string v2, "11"

    invoke-direct {v0, v8, v1, v2}, Lbqe;-><init>(Lbnz;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_6
    new-instance v0, Lbqe;

    const-string v1, "310"

    const-string v2, "13"

    invoke-direct {v0, v8, v1, v2}, Lbqe;-><init>(Lbnz;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_7
    new-instance v0, Lbqe;

    const-string v1, "320"

    const-string v2, "13"

    invoke-direct {v0, v8, v1, v2}, Lbqe;-><init>(Lbnz;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_8
    new-instance v0, Lbqe;

    const-string v1, "310"

    const-string v2, "15"

    invoke-direct {v0, v8, v1, v2}, Lbqe;-><init>(Lbnz;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_9
    new-instance v0, Lbqe;

    const-string v1, "320"

    const-string v2, "15"

    invoke-direct {v0, v8, v1, v2}, Lbqe;-><init>(Lbnz;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_a
    new-instance v0, Lbqe;

    const-string v1, "310"

    const-string v2, "17"

    invoke-direct {v0, v8, v1, v2}, Lbqe;-><init>(Lbnz;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_b
    new-instance v0, Lbqe;

    const-string v1, "320"

    const-string v2, "17"

    invoke-direct {v0, v8, v1, v2}, Lbqe;-><init>(Lbnz;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_a
    move v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x38
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private a(Lbnz;Lbpu;ZZ)Lbpt;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 592
    iget-object v2, p0, Lbps;->b:[I

    .line 593
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 594
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 595
    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 596
    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 597
    const/4 v0, 0x4

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 598
    const/4 v0, 0x5

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 599
    const/4 v0, 0x6

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 600
    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 602
    if-eqz p4, :cond_1

    .line 603
    iget-object v0, p2, Lbpu;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {p1, v0, v2}, Lbpz;->b(Lbnz;I[I)V

    .line 614
    :cond_0
    invoke-static {v2}, Lbpz;->a([I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4188

    div-float v3, v0, v1

    .line 618
    iget-object v0, p2, Lbpu;->b:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p2, Lbpu;->b:[I

    const/4 v4, 0x0

    aget v1, v1, v4

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x4170

    div-float/2addr v0, v1

    .line 619
    sub-float v1, v3, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v0, v1, v0

    const v1, 0x3e99999a

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 620
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 605
    :cond_1
    iget-object v0, p2, Lbpu;->b:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {p1, v0, v2}, Lbpz;->a(Lbnz;I[I)V

    .line 607
    const/4 v1, 0x0

    const/4 v0, 0x7

    :goto_0
    if-ge v1, v0, :cond_0

    .line 608
    aget v3, v2, v1

    .line 609
    aget v4, v2, v0

    aput v4, v2, v1

    .line 610
    aput v3, v2, v0

    .line 607
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 623
    :cond_2
    iget-object v6, p0, Lbps;->e:[I

    .line 624
    iget-object v7, p0, Lbps;->f:[I

    .line 625
    iget-object v4, p0, Lbps;->c:[F

    .line 626
    iget-object v5, p0, Lbps;->d:[F

    .line 628
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/16 v0, 0x8

    if-ge v1, v0, :cond_8

    .line 629
    const/high16 v0, 0x3f80

    aget v8, v2, v1

    int-to-float v8, v8

    mul-float/2addr v0, v8

    div-float v8, v0, v3

    .line 630
    const/high16 v0, 0x3f00

    add-float/2addr v0, v8

    float-to-int v0, v0

    .line 631
    if-gtz v0, :cond_5

    .line 632
    const v0, 0x3e99999a

    cmpg-float v0, v8, v0

    if-gez v0, :cond_3

    .line 633
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 635
    :cond_3
    const/4 v0, 0x1

    .line 642
    :cond_4
    :goto_2
    div-int/lit8 v9, v1, 0x2

    .line 643
    and-int/lit8 v10, v1, 0x1

    if-nez v10, :cond_7

    .line 644
    aput v0, v6, v9

    .line 645
    int-to-float v0, v0

    sub-float v0, v8, v0

    aput v0, v4, v9

    .line 628
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 636
    :cond_5
    const/16 v9, 0x8

    if-le v0, v9, :cond_4

    .line 637
    const v0, 0x410b3333

    cmpl-float v0, v8, v0

    if-lez v0, :cond_6

    .line 638
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 640
    :cond_6
    const/16 v0, 0x8

    goto :goto_2

    .line 647
    :cond_7
    aput v0, v7, v9

    .line 648
    int-to-float v0, v0

    sub-float v0, v8, v0

    aput v0, v5, v9

    goto :goto_3

    .line 652
    :cond_8
    iget-object v0, p0, Lbps;->e:[I

    invoke-static {v0}, Lbpz;->a([I)I

    move-result v8

    iget-object v0, p0, Lbps;->f:[I

    invoke-static {v0}, Lbpz;->a([I)I

    move-result v9

    add-int v0, v8, v9

    add-int/lit8 v10, v0, -0x11

    and-int/lit8 v0, v8, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    move v5, v0

    :goto_4
    and-int/lit8 v0, v9, 0x1

    if-nez v0, :cond_c

    const/4 v0, 0x1

    move v4, v0

    :goto_5
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v0, 0xd

    if-le v8, v0, :cond_d

    const/4 v2, 0x1

    :cond_9
    :goto_6
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/16 v11, 0xd

    if-le v9, v11, :cond_e

    const/4 v0, 0x1

    :cond_a
    :goto_7
    const/4 v11, 0x1

    if-ne v10, v11, :cond_13

    if-eqz v5, :cond_11

    if-eqz v4, :cond_f

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_b
    const/4 v0, 0x0

    move v5, v0

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    move v4, v0

    goto :goto_5

    :cond_d
    const/4 v0, 0x4

    if-ge v8, v0, :cond_9

    const/4 v3, 0x1

    goto :goto_6

    :cond_e
    const/4 v11, 0x4

    if-ge v9, v11, :cond_a

    const/4 v1, 0x1

    goto :goto_7

    :cond_f
    const/4 v2, 0x1

    :cond_10
    :goto_8
    if-eqz v3, :cond_1d

    if-eqz v2, :cond_1c

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_11
    if-nez v4, :cond_12

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_8

    :cond_13
    const/4 v11, -0x1

    if-ne v10, v11, :cond_17

    if-eqz v5, :cond_15

    if-eqz v4, :cond_14

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_14
    const/4 v3, 0x1

    goto :goto_8

    :cond_15
    if-nez v4, :cond_16

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_16
    const/4 v1, 0x1

    goto :goto_8

    :cond_17
    if-nez v10, :cond_1b

    if-eqz v5, :cond_1a

    if-nez v4, :cond_18

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_18
    if-ge v8, v9, :cond_19

    const/4 v3, 0x1

    const/4 v0, 0x1

    goto :goto_8

    :cond_19
    const/4 v2, 0x1

    const/4 v1, 0x1

    goto :goto_8

    :cond_1a
    if-eqz v4, :cond_10

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1c
    iget-object v3, p0, Lbps;->e:[I

    iget-object v4, p0, Lbps;->c:[F

    invoke-static {v3, v4}, Lbpz;->a([I[F)V

    :cond_1d
    if-eqz v2, :cond_1e

    iget-object v2, p0, Lbps;->e:[I

    iget-object v3, p0, Lbps;->c:[F

    invoke-static {v2, v3}, Lbpz;->b([I[F)V

    :cond_1e
    if-eqz v1, :cond_20

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1f
    iget-object v1, p0, Lbps;->f:[I

    iget-object v2, p0, Lbps;->c:[F

    invoke-static {v1, v2}, Lbpz;->a([I[F)V

    :cond_20
    if-eqz v0, :cond_21

    iget-object v0, p0, Lbps;->f:[I

    iget-object v1, p0, Lbps;->d:[F

    invoke-static {v0, v1}, Lbpz;->b([I[F)V

    .line 654
    :cond_21
    iget v0, p2, Lbpu;->a:I

    mul-int/lit8 v1, v0, 0x4

    if-eqz p3, :cond_23

    const/4 v0, 0x0

    :goto_9
    add-int/2addr v1, v0

    if-eqz p4, :cond_24

    const/4 v0, 0x0

    :goto_a
    add-int/2addr v0, v1

    add-int/lit8 v4, v0, -0x1

    .line 656
    const/4 v2, 0x0

    .line 657
    const/4 v1, 0x0

    .line 658
    const/4 v0, 0x3

    move v3, v2

    move v12, v1

    move v1, v0

    move v0, v12

    :goto_b
    if-ltz v1, :cond_25

    .line 659
    invoke-static/range {p2 .. p4}, Lbpz;->a(Lbpu;ZZ)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 660
    sget-object v2, Lbpz;->k:[[I

    aget-object v2, v2, v4

    mul-int/lit8 v5, v1, 0x2

    aget v2, v2, v5

    .line 661
    aget v5, v6, v1

    mul-int/2addr v2, v5

    add-int/2addr v0, v2

    .line 663
    :cond_22
    aget v2, v6, v1

    add-int/2addr v2, v3

    .line 658
    add-int/lit8 v1, v1, -0x1

    move v3, v2

    goto :goto_b

    .line 654
    :cond_23
    const/4 v0, 0x2

    goto :goto_9

    :cond_24
    const/4 v0, 0x1

    goto :goto_a

    .line 665
    :cond_25
    const/4 v1, 0x0

    .line 667
    const/4 v2, 0x3

    :goto_c
    if-ltz v2, :cond_27

    .line 668
    invoke-static/range {p2 .. p4}, Lbpz;->a(Lbpu;ZZ)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 669
    sget-object v5, Lbpz;->k:[[I

    aget-object v5, v5, v4

    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v8, v8, 0x1

    aget v5, v5, v8

    .line 670
    aget v8, v7, v2

    mul-int/2addr v5, v8

    add-int/2addr v1, v5

    .line 667
    :cond_26
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 674
    :cond_27
    add-int/2addr v0, v1

    .line 676
    and-int/lit8 v1, v3, 0x1

    if-nez v1, :cond_28

    const/16 v1, 0xd

    if-gt v3, v1, :cond_28

    const/4 v1, 0x4

    if-ge v3, v1, :cond_29

    .line 677
    :cond_28
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 680
    :cond_29
    rsub-int/lit8 v1, v3, 0xd

    div-int/lit8 v1, v1, 0x2

    .line 681
    sget-object v2, Lbpz;->g:[I

    aget v2, v2, v1

    .line 682
    rsub-int/lit8 v3, v2, 0x9

    .line 683
    const/4 v4, 0x1

    invoke-static {v6, v2, v4}, Ld;->a([IIZ)I

    move-result v2

    .line 684
    const/4 v4, 0x0

    invoke-static {v7, v3, v4}, Ld;->a([IIZ)I

    move-result v3

    .line 685
    sget-object v4, Lbpz;->h:[I

    aget v4, v4, v1

    .line 686
    sget-object v5, Lbpz;->i:[I

    aget v1, v5, v1

    .line 687
    mul-int/2addr v2, v4

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 689
    new-instance v2, Lbpt;

    invoke-direct {v2, v1, v0}, Lbpt;-><init>(II)V

    return-object v2
.end method

.method private a(Lbnz;IZ)Lbpu;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 551
    if-eqz p3, :cond_1

    .line 554
    iget-object v0, p0, Lbpz;->o:[I

    aget v0, v0, v5

    add-int/lit8 v0, v0, -0x1

    .line 556
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Lbnz;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 557
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 560
    :cond_0
    add-int/lit8 v3, v0, 0x1

    .line 561
    iget-object v0, p0, Lbpz;->o:[I

    aget v0, v0, v5

    sub-int/2addr v0, v3

    .line 563
    iget-object v1, p0, Lbpz;->o:[I

    aget v4, v1, v6

    .line 575
    :goto_1
    iget-object v1, p0, Lbps;->a:[I

    .line 576
    const/4 v2, 0x3

    invoke-static {v1, v5, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 578
    aput v0, v1, v5

    .line 581
    :try_start_0
    sget-object v0, Lbpz;->j:[[I

    invoke-static {v1, v0}, Lbpz;->a([I[[I)I
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 585
    new-instance v0, Lbpu;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v3, v2, v5

    aput v4, v2, v6

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lbpu;-><init>(I[IIII)V

    :goto_2
    return-object v0

    .line 568
    :cond_1
    iget-object v0, p0, Lbpz;->o:[I

    aget v3, v0, v5

    .line 570
    iget-object v0, p0, Lbpz;->o:[I

    aget v0, v0, v6

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lbnz;->d(I)I

    move-result v4

    .line 571
    iget-object v0, p0, Lbpz;->o:[I

    aget v0, v0, v6

    sub-int v0, v4, v0

    goto :goto_1

    .line 583
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2
.end method

.method private a(Lbnz;Ljava/util/List;I)Lbpx;
    .locals 14
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbnz;",
            "Ljava/util/List",
            "<",
            "Lbpx;",
            ">;I)",
            "Lbpx;"
        }
    .end annotation

    .prologue
    .line 428
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 429
    :goto_0
    iget-boolean v2, p0, Lbpz;->p:Z

    if-eqz v2, :cond_15

    .line 430
    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    move v2, v1

    .line 435
    :goto_2
    const/4 v3, 0x1

    .line 436
    const/4 v1, -0x1

    move v4, v3

    move v3, v1

    .line 438
    :goto_3
    iget-object v9, p0, Lbps;->a:[I

    const/4 v1, 0x0

    const/4 v5, 0x0

    aput v5, v9, v1

    const/4 v1, 0x1

    const/4 v5, 0x0

    aput v5, v9, v1

    const/4 v1, 0x2

    const/4 v5, 0x0

    aput v5, v9, v1

    const/4 v1, 0x3

    const/4 v5, 0x0

    aput v5, v9, v1

    iget v10, p1, Lbnz;->b:I

    if-gez v3, :cond_14

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_5
    iget-boolean v6, p0, Lbpz;->p:Z

    if-eqz v6, :cond_0

    if-nez v5, :cond_5

    const/4 v5, 0x1

    :cond_0
    :goto_6
    const/4 v6, 0x0

    move v13, v6

    move v6, v1

    move v1, v13

    :goto_7
    if-ge v6, v10, :cond_7

    invoke-virtual {p1, v6}, Lbnz;->a(I)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    :goto_8
    if-eqz v1, :cond_7

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 428
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 430
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 438
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbpx;

    iget-object v1, v1, Lbpx;->c:Lbpu;

    iget-object v1, v1, Lbpu;->b:[I

    const/4 v5, 0x1

    aget v1, v1, v5

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    goto :goto_8

    :cond_7
    const/4 v7, 0x0

    move v8, v6

    move v13, v7

    move v7, v1

    move v1, v6

    move v6, v13

    :goto_9
    if-ge v8, v10, :cond_e

    invoke-virtual {p1, v8}, Lbnz;->a(I)Z

    move-result v11

    xor-int/2addr v11, v7

    if-eqz v11, :cond_8

    aget v11, v9, v6

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v6

    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_8
    const/4 v11, 0x3

    if-ne v6, v11, :cond_c

    if-eqz v5, :cond_9

    invoke-static {v9}, Lbpz;->c([I)V

    :cond_9
    invoke-static {v9}, Lbpz;->b([I)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v5, p0, Lbpz;->o:[I

    const/4 v6, 0x0

    aput v1, v5, v6

    iget-object v1, p0, Lbpz;->o:[I

    const/4 v5, 0x1

    aput v8, v1, v5

    .line 439
    move/from16 v0, p3

    invoke-direct {p0, p1, v0, v2}, Lbpz;->a(Lbnz;IZ)Lbpu;

    move-result-object v5

    .line 440
    if-nez v5, :cond_10

    .line 441
    iget-object v1, p0, Lbpz;->o:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-virtual {p1, v1}, Lbnz;->a(I)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p1, v1}, Lbnz;->d(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lbnz;->c(I)I

    move-result v1

    :goto_b
    move v3, v4

    .line 445
    :goto_c
    if-nez v3, :cond_13

    .line 450
    const/4 v1, 0x1

    invoke-direct {p0, p1, v5, v2, v1}, Lbpz;->a(Lbnz;Lbpu;ZZ)Lbpt;

    move-result-object v3

    .line 452
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbpx;

    iget-object v1, v1, Lbpx;->b:Lbpt;

    if-nez v1, :cond_11

    const/4 v1, 0x1

    :goto_d
    if-eqz v1, :cond_12

    .line 453
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 438
    :cond_a
    if-eqz v5, :cond_b

    invoke-static {v9}, Lbpz;->c([I)V

    :cond_b
    const/4 v11, 0x0

    aget v11, v9, v11

    const/4 v12, 0x1

    aget v12, v9, v12

    add-int/2addr v11, v12

    add-int/2addr v1, v11

    const/4 v11, 0x0

    const/4 v12, 0x2

    aget v12, v9, v12

    aput v12, v9, v11

    const/4 v11, 0x1

    const/4 v12, 0x3

    aget v12, v9, v12

    aput v12, v9, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput v12, v9, v11

    const/4 v11, 0x3

    const/4 v12, 0x0

    aput v12, v9, v11

    add-int/lit8 v6, v6, -0x1

    :goto_e
    const/4 v11, 0x1

    aput v11, v9, v6

    if-nez v7, :cond_d

    const/4 v7, 0x1

    goto/16 :goto_a

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_a

    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 441
    :cond_f
    invoke-virtual {p1, v1}, Lbnz;->c(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lbnz;->d(I)I

    move-result v1

    goto :goto_b

    .line 443
    :cond_10
    const/4 v4, 0x0

    move v1, v3

    move v3, v4

    goto :goto_c

    .line 452
    :cond_11
    const/4 v1, 0x0

    goto :goto_d

    .line 458
    :cond_12
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v5, v2, v1}, Lbpz;->a(Lbnz;Lbpu;ZZ)Lbpt;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 462
    :goto_f
    new-instance v2, Lbpx;

    invoke-direct {v2, v3, v1, v5}, Lbpx;-><init>(Lbpt;Lbpt;Lbpu;)V

    return-object v2

    .line 460
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_f

    :cond_13
    move v4, v3

    move v3, v1

    goto/16 :goto_3

    :cond_14
    move v1, v3

    goto/16 :goto_4

    :cond_15
    move v2, v1

    goto/16 :goto_2
.end method

.method private a(ILbnz;)Ljava/util/List;
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbnz;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbpx;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 154
    :goto_0
    :try_start_0
    iget-object v0, p0, Lbpz;->m:Ljava/util/List;

    invoke-direct {p0, p2, v0, p1}, Lbpz;->a(Lbnz;Ljava/util/List;I)Lbpx;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lbpz;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    iget-object v1, p0, Lbpz;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    throw v0

    .line 166
    :cond_0
    invoke-direct {p0}, Lbpz;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lbpz;->m:Ljava/util/List;

    .line 182
    :cond_1
    return-object v0

    .line 170
    :cond_2
    iget-object v0, p0, Lbpz;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    move v3, v4

    :goto_1
    move v1, v5

    move v6, v5

    .line 171
    :goto_2
    iget-object v0, p0, Lbpz;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_13

    iget-object v0, p0, Lbpz;->n:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpy;

    iget v2, v0, Lbpy;->b:I

    if-le v2, p1, :cond_6

    iget-object v2, p0, Lbpz;->m:Ljava/util/List;

    invoke-virtual {v0, v2}, Lbpy;->a(Ljava/util/List;)Z

    move-result v0

    :goto_3
    if-nez v0, :cond_3

    if-eqz v1, :cond_7

    .line 173
    :cond_3
    if-eqz v3, :cond_4

    .line 176
    invoke-direct {p0, v5}, Lbpz;->a(Z)Ljava/util/List;

    move-result-object v0

    .line 177
    if-nez v0, :cond_1

    .line 180
    invoke-direct {p0, v4}, Lbpz;->a(Z)Ljava/util/List;

    move-result-object v0

    .line 181
    if-nez v0, :cond_1

    .line 186
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_5
    move v3, v5

    .line 170
    goto :goto_1

    .line 171
    :cond_6
    iget-object v1, p0, Lbpz;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lbpy;->a(Ljava/util/List;)Z

    move-result v0

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v0

    goto :goto_2

    :cond_7
    iget-object v7, p0, Lbpz;->m:Ljava/util/List;

    iget-object v0, p0, Lbpz;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lbpy;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpx;

    iget-object v1, v2, Lbpy;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbpx;

    invoke-virtual {v0, v1}, Lbpx;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v0, v4

    :goto_4
    if-nez v0, :cond_9

    move v0, v5

    :goto_5
    if-eqz v0, :cond_8

    move v0, v4

    :goto_6
    if-nez v0, :cond_3

    iget-object v0, p0, Lbpz;->n:Ljava/util/List;

    new-instance v1, Lbpy;

    iget-object v2, p0, Lbpz;->m:Ljava/util/List;

    invoke-direct {v1, v2, p1}, Lbpy;-><init>(Ljava/util/List;I)V

    invoke-interface {v0, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lbpz;->m:Ljava/util/List;

    iget-object v0, p0, Lbpz;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpy;

    iget-object v1, v0, Lbpy;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-eq v1, v7, :cond_b

    iget-object v0, v0, Lbpy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpx;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbpx;

    invoke-virtual {v0, v1}, Lbpx;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v0, v4

    :goto_8
    if-nez v0, :cond_c

    move v0, v5

    :goto_9
    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    :cond_e
    move v0, v5

    goto :goto_6

    :cond_f
    move v0, v5

    goto :goto_8

    :cond_10
    move v0, v4

    goto :goto_9

    :cond_11
    move v0, v5

    goto :goto_4

    :cond_12
    move v0, v4

    goto :goto_5

    :cond_13
    move v0, v5

    goto/16 :goto_3
.end method

.method private a(Ljava/util/List;I)Ljava/util/List;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbpy;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lbpx;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 220
    :goto_0
    iget-object v0, p0, Lbpz;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_6

    .line 221
    iget-object v0, p0, Lbpz;->n:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpy;

    .line 222
    iget-object v1, p0, Lbpz;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 223
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    move v2, v3

    .line 224
    :goto_1
    if-ge v2, v5, :cond_0

    .line 225
    iget-object v6, p0, Lbpz;->m:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbpy;

    iget-object v1, v1, Lbpy;->a:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 227
    :cond_0
    iget-object v1, p0, Lbpz;->m:Ljava/util/List;

    iget-object v2, v0, Lbpy;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    iget-object v6, p0, Lbpz;->m:Ljava/util/List;

    sget-object v7, Lbpz;->l:[[I

    move v5, v3

    :goto_2
    const/16 v1, 0xa

    if-ge v5, v1, :cond_3

    aget-object v8, v7, v5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    array-length v2, v8

    if-gt v1, v2, :cond_2

    move v2, v3

    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbpx;

    iget-object v1, v1, Lbpx;->c:Lbpu;

    iget v1, v1, Lbpu;->a:I

    aget v9, v8, v2

    if-eq v1, v9, :cond_1

    move v1, v3

    :goto_4
    if-eqz v1, :cond_2

    move v1, v4

    :goto_5
    if-eqz v1, :cond_5

    .line 230
    invoke-direct {p0}, Lbpz;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 234
    iget-object v0, p0, Lbpz;->m:Ljava/util/List;

    .line 242
    :goto_6
    return-object v0

    .line 229
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    :cond_3
    move v1, v3

    goto :goto_5

    .line 237
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 239
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v0, p2, 0x1

    :try_start_0
    invoke-direct {p0, v1, v0}, Lbpz;->a(Ljava/util/List;I)Ljava/util/List;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 220
    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 248
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_7
    move v1, v4

    goto :goto_4
.end method

.method private a(Z)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lbpx;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 193
    iget-object v1, p0, Lbpz;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_1

    .line 194
    iget-object v1, p0, Lbpz;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 214
    :cond_0
    :goto_0
    return-object v0

    .line 198
    :cond_1
    iget-object v1, p0, Lbpz;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 199
    if-eqz p1, :cond_2

    .line 200
    iget-object v1, p0, Lbpz;->n:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 205
    :cond_2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lbpz;->a(Ljava/util/List;I)Ljava/util/List;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 210
    :goto_1
    if-eqz p1, :cond_0

    .line 211
    iget-object v1, p0, Lbpz;->n:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static a(Lbpu;ZZ)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 694
    iget v0, p0, Lbpu;->a:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 384
    iget-object v0, p0, Lbpz;->m:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpx;

    .line 385
    iget-object v6, v0, Lbpx;->a:Lbpt;

    .line 386
    iget-object v0, v0, Lbpx;->b:Lbpt;

    .line 388
    if-nez v0, :cond_1

    move v2, v5

    .line 410
    :cond_0
    :goto_0
    return v2

    .line 392
    :cond_1
    iget v1, v0, Lbpt;->b:I

    .line 393
    const/4 v0, 0x2

    move v3, v0

    move v4, v1

    move v1, v2

    .line 395
    :goto_1
    iget-object v0, p0, Lbpz;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 396
    iget-object v0, p0, Lbpz;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpx;

    .line 397
    iget-object v7, v0, Lbpx;->a:Lbpt;

    iget v7, v7, Lbpt;->b:I

    add-int/2addr v4, v7

    .line 398
    add-int/lit8 v3, v3, 0x1

    .line 399
    iget-object v0, v0, Lbpx;->b:Lbpt;

    .line 400
    if-eqz v0, :cond_2

    .line 401
    iget v0, v0, Lbpt;->b:I

    add-int/2addr v4, v0

    .line 402
    add-int/lit8 v3, v3, 0x1

    .line 395
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 406
    :cond_3
    rem-int/lit16 v0, v4, 0xd3

    .line 408
    add-int/lit8 v1, v3, -0x4

    mul-int/lit16 v1, v1, 0xd3

    add-int/2addr v0, v1

    .line 410
    iget v1, v6, Lbpt;->a:I

    if-eq v0, v1, :cond_0

    move v2, v5

    goto :goto_0
.end method

.method private static c([I)V
    .locals 4
    .parameter

    .prologue
    .line 537
    array-length v1, p0

    .line 538
    const/4 v0, 0x0

    :goto_0
    div-int/lit8 v2, v1, 0x2

    if-ge v0, v2, :cond_0

    .line 539
    aget v2, p0, v0

    .line 540
    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aget v3, p0, v3

    aput v3, p0, v0

    .line 541
    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aput v2, p0, v3

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ILbnz;Ljava/util/Map;)Lbnr;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbnz;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lbnr;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lbpz;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbpz;->p:Z

    .line 132
    :try_start_0
    invoke-direct {p0, p1, p2}, Lbpz;->a(ILbnz;)Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lbpz;->a(Ljava/util/List;)Lbnr;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    .line 138
    :catch_0
    move-exception v0

    iget-object v0, p0, Lbpz;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbpz;->p:Z

    .line 140
    invoke-direct {p0, p1, p2}, Lbpz;->a(ILbnz;)Ljava/util/List;

    move-result-object v0

    .line 141
    invoke-static {v0}, Lbpz;->a(Ljava/util/List;)Lbnr;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lbpz;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    iget-object v0, p0, Lbpz;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 148
    return-void
.end method
