.class public Lorg/simalliance/openmobileapi/SEService;
.super Ljava/lang/Object;


# static fields
.field private static final SERVICE_TAG:Ljava/lang/String; = "SEService"


# instance fields
.field private final mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

.field private mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mReaders:[Lorg/simalliance/openmobileapi/Reader;

.field private volatile mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/simalliance/openmobileapi/SEService$CallBack;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simalliance/openmobileapi/SEService$1;

    invoke-direct {v0, p0}, Lorg/simalliance/openmobileapi/SEService$1;-><init>(Lorg/simalliance/openmobileapi/SEService;)V

    iput-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/simalliance/openmobileapi/SEService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/simalliance/openmobileapi/SEService;->mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;

    new-instance v0, Lorg/simalliance/openmobileapi/SEService$2;

    invoke-direct {v0, p0}, Lorg/simalliance/openmobileapi/SEService$2;-><init>(Lorg/simalliance/openmobileapi/SEService;)V

    iput-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method static synthetic access$002(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/service/ISmartcardService;)Lorg/simalliance/openmobileapi/service/ISmartcardService;
    .locals 0

    iput-object p1, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    return-object p1
.end method

.method static synthetic access$100(Lorg/simalliance/openmobileapi/SEService;)Lorg/simalliance/openmobileapi/SEService$CallBack;
    .locals 1

    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;

    return-object v0
.end method

.method static synthetic access$200(Lorg/simalliance/openmobileapi/SEService;)[Lorg/simalliance/openmobileapi/Reader;
    .locals 1

    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:[Lorg/simalliance/openmobileapi/Reader;

    return-object v0
.end method

.method private basicChannelInUse(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "basic channel in use"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private channelCannotBeEstablished(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, v1, Ljava/util/MissingResourceException;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "channel in use"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "open channel failed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "out of channels"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MANAGE CHANNEL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->throwException()V
    :try_end_0
    .catch Lorg/simalliance/openmobileapi/service/CardException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/service/CardException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Ljava/security/AccessControlException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkIfAppletAvailable(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    .locals 2

    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Ljava/util/NoSuchElementException;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Applet with the defined aid does not exist in the SE"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private isDefaultApplicationSelected(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "default application is not selected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method closeChannel(Lorg/simalliance/openmobileapi/Channel;)V
    .locals 4

    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Channel;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    :try_start_0
    iget-object v1, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Channel;->getHandle()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->closeChannel(JLorg/simalliance/openmobileapi/service/SmartcardError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getAtr(Lorg/simalliance/openmobileapi/Reader;)[B
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "reader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    :try_start_0
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Reader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->getAtr(Ljava/lang/String;Lorg/simalliance/openmobileapi/service/SmartcardError;)[B

    move-result-object v0

    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReaders()[Lorg/simalliance/openmobileapi/Reader;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    :try_start_0
    iget-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-interface {v2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->getReaders(Lorg/simalliance/openmobileapi/service/SmartcardError;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    array-length v1, v2

    new-array v1, v1, [Lorg/simalliance/openmobileapi/Reader;

    iput-object v1, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:[Lorg/simalliance/openmobileapi/Reader;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    iget-object v5, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:[Lorg/simalliance/openmobileapi/Reader;

    new-instance v6, Lorg/simalliance/openmobileapi/Reader;

    invoke-direct {v6, v4, p0}, Lorg/simalliance/openmobileapi/Reader;-><init>(Ljava/lang/String;Lorg/simalliance/openmobileapi/SEService;)V

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:[Lorg/simalliance/openmobileapi/Reader;

    return-object v0
.end method

.method getSelectResponse(Lorg/simalliance/openmobileapi/Channel;)[B
    .locals 4

    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Channel;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channel is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    :try_start_0
    iget-object v1, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Channel;->getHandle()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->getSelectResponse(JLorg/simalliance/openmobileapi/service/SmartcardError;)[B

    move-result-object v1

    invoke-direct {p0, v0}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    return-object v1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    throw v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isSecureElementPresent(Lorg/simalliance/openmobileapi/Reader;)Z
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "reader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    :try_start_0
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Reader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->isCardPresent(Ljava/lang/String;Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v0

    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method openBasicChannel(Lorg/simalliance/openmobileapi/Session;[B)Lorg/simalliance/openmobileapi/Channel;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "session must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "reader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Session;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "session is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    :try_start_0
    iget-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/Reader;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/simalliance/openmobileapi/SEService;->mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    invoke-interface {v2, v3, p2, v4, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->openBasicChannelAid(Ljava/lang/String;[BLorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/SEService;->basicChannelInUse(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/SEService;->channelCannotBeEstablished(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz p2, :cond_6

    array-length v4, p2

    if-nez v4, :cond_7

    :cond_6
    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/SEService;->isDefaultApplicationSelected(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_7
    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/SEService;->checkIfAppletAvailable(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    new-instance v0, Lorg/simalliance/openmobileapi/Channel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v2, v3, v1}, Lorg/simalliance/openmobileapi/Channel;-><init>(Lorg/simalliance/openmobileapi/Session;JZ)V

    goto :goto_0
.end method

.method openLogicalChannel(Lorg/simalliance/openmobileapi/Session;[B)Lorg/simalliance/openmobileapi/Channel;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "session must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "reader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Session;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "session is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    :try_start_0
    iget-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/Reader;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/simalliance/openmobileapi/SEService;->mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    invoke-interface {v2, v3, p2, v4, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->openLogicalChannel(Ljava/lang/String;[BLorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/SEService;->channelCannotBeEstablished(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/SEService;->checkIfAppletAvailable(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    new-instance v0, Lorg/simalliance/openmobileapi/Channel;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v2, v3, v1}, Lorg/simalliance/openmobileapi/Channel;-><init>(Lorg/simalliance/openmobileapi/Session;JZ)V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 6

    iget-object v1, p0, Lorg/simalliance/openmobileapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:[Lorg/simalliance/openmobileapi/Reader;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:[Lorg/simalliance/openmobileapi/Reader;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:[Lorg/simalliance/openmobileapi/Reader;

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Lorg/simalliance/openmobileapi/Reader;->closeSessions()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :try_start_4
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    return-void

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v2

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method transmit(Lorg/simalliance/openmobileapi/Channel;[B)[B
    .locals 4

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "command must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p2

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "command must have at least 4 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Channel;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channel is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    :try_start_0
    iget-object v1, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Channel;->getHandle()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p2, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->transmit(J[BLorg/simalliance/openmobileapi/service/SmartcardError;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-direct {p0, v0}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
