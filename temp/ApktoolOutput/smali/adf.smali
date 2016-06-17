.class public final Ladf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:D

.field private static b:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/high16 v0, -0x4010

    .line 20
    sput-wide v0, Ladf;->a:D

    .line 24
    sput-wide v0, Ladf;->b:D

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    sget-wide v2, Ladf;->b:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Ladf;->a:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(D)V
    .locals 0
    .parameter

    .prologue
    .line 20
    sput-wide p0, Ladf;->a:D

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 34
    .line 35
    :try_start_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Landroid/location/LocationManager;

    .line 36
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    sput-wide v2, Ladf;->a:D

    .line 41
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    sput-wide v0, Ladf;->b:D

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    new-instance v5, Ladg;

    invoke-direct {v5}, Ladg;-><init>()V

    .line 72
    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    .line 71
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 75
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    sput-wide v2, Ladf;->a:D

    .line 78
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    sput-wide v0, Ladf;->b:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(D)V
    .locals 0
    .parameter

    .prologue
    .line 24
    sput-wide p0, Ladf;->b:D

    return-void
.end method
