.class final Lemi;
.super Ljava/lang/Object;
.source "SystemLocationProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lemg;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    invoke-direct {p0}, Lemi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    invoke-static {}, Lemg;->a()Ldd;

    .line 149
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    return-void
.end method
