.class public Lmiui/hareware/display/DisplayFeatureManager;
.super Ljava/lang/Object;
.source "DisplayFeatureManager.java"


# static fields
.field private static final COLOR_SERVICE_NAME:Ljava/lang/String; = "com.qti.snapdragon.sdk.display.IColorService"

.field public static final DEFALUT_GAMUT_MODE:I = 0x0

.field public static final DEFALUT_SCREEN_CABC:I = 0x1

.field public static final DEFALUT_SCREEN_COLOR:I = 0x2

.field public static final DEFAULT_DISPLAY_EYECARE_LEVEL:I = 0x0

.field public static final DEFAULT_SCREEN_SATURATION:I

.field private static final DISPLAY_FEATURE_SERVICE:Ljava/lang/String; = "DisplayFeatureControl"

.field public static final PROPERTY_ASSERTIVE_DISPLAY:Ljava/lang/String; = "persist.sys.ltm_enable"

.field public static final PROPERTY_DISPLAY_EYECARE:Ljava/lang/String; = "persist.sys.display_eyecare"

.field public static final PROPERTY_GAMUT_MODE:Ljava/lang/String; = "persist.sys.gamut_mode"

.field public static final PROPERTY_SCREEN_CABC:Ljava/lang/String; = "persist.sys.display_cabc"

.field public static final PROPERTY_SCREEN_COLOR:Ljava/lang/String; = "persist.sys.display_prefer"

.field public static final PROPERTY_SCREEN_SATURATION:Ljava/lang/String; = "persist.sys.display_ce"

.field public static final SCREEN_COLOR_COOL:I = 0x3

.field public static final SCREEN_COLOR_NATURE:I = 0x2

.field public static final SCREEN_COLOR_WARM:I = 0x1

.field public static final SCREEN_SATURATION_STANDARD:I = 0xa

.field public static final SCREEN_SATURATION_VIVID:I = 0xb

.field private static TAG:Ljava/lang/String; = null

.field private static final TRANSACTION_setActiveMode:I = 0x6

.field private static final TRANSACTION_setDefaultMode:I = 0xc

.field private static sInstance:Lmiui/hareware/display/DisplayFeatureManager;


# instance fields
.field public blue:[Ljava/lang/String;

.field public count:I

.field level:I

.field line:Ljava/lang/String;

.field private mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

.field old_blue:Ljava/lang/String;

.field path:Ljava/lang/String;

.field rgb_old:[Ljava/lang/String;

.field toogle_state:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "DisplayFeatureManager"

    sput-object v0, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    .line 108
    invoke-static {}, Lmiui/hareware/display/DisplayFeatureManager;->getDefaultScreenSaturation()I

    move-result v0

    sput v0, Lmiui/hareware/display/DisplayFeatureManager;->DEFAULT_SCREEN_SATURATION:I

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v1, "DisplayFeatureControl"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 42
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_13

    .line 43
    new-instance v1, Lmiui/hareware/display/DisplayFeatureServiceProxy;

    invoke-direct {v1, v0}, Lmiui/hareware/display/DisplayFeatureServiceProxy;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    .line 45
    .line 19
    :cond_13
    const-string v0, " "

    iput-object v0, p0, Lmiui/hareware/display/DisplayFeatureManager;->old_blue:Ljava/lang/String;

    .line 21
    const-string v0, "/sys/devices/platform/kcal_ctrl.0/kcal"

    iput-object v0, p0, Lmiui/hareware/display/DisplayFeatureManager;->path:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/hareware/display/DisplayFeatureManager;->rgb_old:[Ljava/lang/String;

    .line 24
    iput v3, p0, Lmiui/hareware/display/DisplayFeatureManager;->level:I

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "220"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "205"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "190"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "175"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "160"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "145"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "130"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "125"

    aput-object v2, v0, v1

    iput-object v0, p0, Lmiui/hareware/display/DisplayFeatureManager;->blue:[Ljava/lang/String;

    .line 27
    iput v3, p0, Lmiui/hareware/display/DisplayFeatureManager;->count:I

    return-void
.end method

.method private static getDefaultScreenSaturation()I
    .registers 3

    .prologue
    .line 111
    const/16 v0, 0xa

    .line 112
    .local v0, "defaultSaturationMode":I
    const-string v1, "is_hongmi"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 113
    const/16 v0, 0xb

    .line 115
    :cond_d
    const-string v1, "display_ce"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getInstance()Lmiui/hareware/display/DisplayFeatureManager;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lmiui/hareware/display/DisplayFeatureManager;->sInstance:Lmiui/hareware/display/DisplayFeatureManager;

    if-nez v0, :cond_b

    .line 35
    new-instance v0, Lmiui/hareware/display/DisplayFeatureManager;

    invoke-direct {v0}, Lmiui/hareware/display/DisplayFeatureManager;-><init>()V

    sput-object v0, Lmiui/hareware/display/DisplayFeatureManager;->sInstance:Lmiui/hareware/display/DisplayFeatureManager;

    .line 37
    :cond_b
    sget-object v0, Lmiui/hareware/display/DisplayFeatureManager;->sInstance:Lmiui/hareware/display/DisplayFeatureManager;

    return-object v0
.end method

.method private setActiveMode(Landroid/os/IBinder;II)I
    .registers 9
    .param p1, "colorService"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "modeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 212
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 215
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {p1, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 219
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    move-result v2

    .line 222
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 225
    return v2

    .line 222
    .end local v2    # "result":I
    :catchall_26
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method private setDefaultMode(Landroid/os/IBinder;II)I
    .registers 9
    .param p1, "colorService"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "modeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 232
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 235
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {p1, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 239
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    move-result v2

    .line 242
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 245
    return v2

    .line 242
    .end local v2    # "result":I
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method


# virtual methods
.method public RMcontrol(ZLjava/lang/String;)V
    .registers 12
    .param p1, "z"    # Z
    .param p2, "b"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 54
    const/4 v5, 0x0

    .line 55
    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v4, p0, Lmiui/hareware/display/DisplayFeatureManager;->path:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_99

    .line 56
    .local v1, "fis":Ljava/io/InputStream;
    :try_start_9
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_8f

    .line 57
    .local v2, "isr":Ljava/io/InputStreamReader;
    :try_start_14
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_ea

    .line 60
    .local v0, "br":Ljava/io/BufferedReader;
    if-eqz p1, :cond_9d

    .line 61
    :try_start_1b
    iget v4, p0, Lmiui/hareware/display/DisplayFeatureManager;->count:I

    if-ge v4, v6, :cond_2d

    .line 62
    iget v4, p0, Lmiui/hareware/display/DisplayFeatureManager;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmiui/hareware/display/DisplayFeatureManager;->count:I

    .line 63
    :goto_25
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/hareware/display/DisplayFeatureManager;->line:Ljava/lang/String;

    if-nez v4, :cond_70

    .line 66
    :cond_2d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiui/hareware/display/DisplayFeatureManager;->rgb_old:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lmiui/hareware/display/DisplayFeatureManager;->rgb_old:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "rgb":Ljava/lang/String;
    iget-object v4, p0, Lmiui/hareware/display/DisplayFeatureManager;->path:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/miui/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_60
    .catchall {:try_start_1b .. :try_end_60} :catchall_7b

    .line 77
    .end local v3    # "rgb":Ljava/lang/String;
    :cond_60
    :goto_60
    if-eqz v0, :cond_65

    :try_start_62
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_ea

    :cond_65
    if-eqz v2, :cond_6a

    :try_start_67
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_8f

    :cond_6a
    if-eqz v1, :cond_6f

    :try_start_6c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_99

    .line 79
    :cond_6f
    return-void

    .line 64
    :cond_70
    :try_start_70
    iget-object v4, p0, Lmiui/hareware/display/DisplayFeatureManager;->line:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/hareware/display/DisplayFeatureManager;->rgb_old:[Ljava/lang/String;
    :try_end_7a
    .catchall {:try_start_70 .. :try_end_7a} :catchall_7b

    goto :goto_25

    .line 77
    :catchall_7b
    move-exception v4

    if-eqz v0, :cond_81

    :try_start_7e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_81
    throw v4
    :try_end_82
    .catchall {:try_start_7e .. :try_end_82} :catchall_82

    :catchall_82
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    .end local v0    # "br":Ljava/io/BufferedReader;
    :goto_86
    if-nez v5, :cond_d7

    move-object v5, v4

    :cond_89
    :goto_89
    if-eqz v2, :cond_8e

    :try_start_8b
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    :cond_8e
    throw v5
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_8f

    .end local v2    # "isr":Ljava/io/InputStreamReader;
    :catchall_8f
    move-exception v4

    if-nez v5, :cond_dd

    move-object v5, v4

    :cond_93
    :goto_93
    if-eqz v1, :cond_98

    :try_start_95
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_98
    throw v5
    :try_end_99
    .catchall {:try_start_95 .. :try_end_99} :catchall_99

    .end local v1    # "fis":Ljava/io/InputStream;
    :catchall_99
    move-exception v4

    if-nez v5, :cond_e3

    :goto_9c
    throw v4

    .line 71
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "fis":Ljava/io/InputStream;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    :cond_9d
    :try_start_9d
    iget-object v4, p0, Lmiui/hareware/display/DisplayFeatureManager;->rgb_old:[Ljava/lang/String;

    if-eqz v4, :cond_60

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiui/hareware/display/DisplayFeatureManager;->rgb_old:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lmiui/hareware/display/DisplayFeatureManager;->rgb_old:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lmiui/hareware/display/DisplayFeatureManager;->rgb_old:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    .restart local v3    # "rgb":Ljava/lang/String;
    iget-object v4, p0, Lmiui/hareware/display/DisplayFeatureManager;->path:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/miui/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_d6
    .catchall {:try_start_9d .. :try_end_d6} :catchall_7b

    goto :goto_60

    .line 77
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "rgb":Ljava/lang/String;
    :cond_d7
    if-eq v5, v4, :cond_89

    :try_start_d9
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_8f

    goto :goto_89

    .end local v2    # "isr":Ljava/io/InputStreamReader;
    :cond_dd
    if-eq v5, v4, :cond_93

    :try_start_df
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_99

    goto :goto_93

    .end local v1    # "fis":Ljava/io/InputStream;
    :cond_e3
    if-eq v5, v4, :cond_e8

    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e8
    move-object v4, v5

    goto :goto_9c

    .restart local v1    # "fis":Ljava/io/InputStream;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    :catchall_ea
    move-exception v4

    goto :goto_86
.end method

.method public getColorPrefer()I
    .registers 3

    .prologue
    .line 69
    const-string v0, "persist.sys.display_prefer"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEyeCare()I
    .registers 3

    .prologue
    .line 98
    const-string v0, "persist.sys.display_eyecare"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenCabc()I
    .registers 3

    .prologue
    .line 152
    const-string v0, "persist.sys.display_cabc"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenGamut()I
    .registers 3

    .prologue
    .line 174
    const-string v0, "persist.sys.gamut_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenSaturation()I
    .registers 3

    .prologue
    .line 130
    const-string v0, "persist.sys.display_ce"

    sget v1, Lmiui/hareware/display/DisplayFeatureManager;->DEFAULT_SCREEN_SATURATION:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isAdEnable()Z
    .registers 3

    .prologue
    .line 196
    const-string v0, "persist.sys.ltm_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public s0bes(I)V
    .registers 5
    .param p1, "param"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 31
    if-eqz p1, :cond_12

    .line 32
    iput p1, p0, Lmiui/hareware/display/DisplayFeatureManager;->level:I

    .line 33
    const/4 v0, 0x1

    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->blue:[Ljava/lang/String;

    iget v2, p0, Lmiui/hareware/display/DisplayFeatureManager;->level:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lmiui/hareware/display/DisplayFeatureManager;->RMcontrol(ZLjava/lang/String;)V

    .line 38
    :goto_11
    return-void

    .line 35
    :cond_12
    iput v2, p0, Lmiui/hareware/display/DisplayFeatureManager;->level:I

    .line 36
    iget-object v0, p0, Lmiui/hareware/display/DisplayFeatureManager;->blue:[Ljava/lang/String;

    iget v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->level:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v2, v0}, Lmiui/hareware/display/DisplayFeatureManager;->RMcontrol(ZLjava/lang/String;)V

    goto :goto_11
.end method

.method public setAdEnable(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 185
    :try_start_1
    iget-object v2, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v2, :cond_10

    .line 186
    iget-object v2, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    const/4 v3, 0x0

    if-eqz p1, :cond_b

    const/4 v1, 0x1

    :cond_b
    const/16 v4, 0xff

    invoke-virtual {v2, v3, v1, v4}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setAd(III)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_1a

    .line 192
    :cond_10
    :goto_10
    const-string v1, "persist.sys.ltm_enable"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void

    .line 188
    :catch_1a
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v2, "set assertive display error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public setColorPrefer(I)V
    .registers 5
    .param p1, "mode"    # I

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_a

    .line 59
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setColorPrefer(II)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_14

    .line 65
    :cond_a
    :goto_a
    const-string v1, "persist.sys.display_prefer"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void

    .line 61
    :catch_14
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v2, "set color prefer error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public setEyeCare(I)V
    .registers 7
    .param p1, "level"    # I

    .prologue
    .line 81
    const/4 v2, -0x1

    .line 82
    .local v2, "ret":I
    :try_start_1
    iget-object v3, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v3, :cond_c

    .line 83
    iget-object v3, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setEyeCare(II)I

    move-result v2

    .line 85
    :cond_c
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 86
    .local v0, "colorService":Landroid/os/IBinder;
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1f

    if-eqz v0, :cond_1f

    .line 87
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, p1}, Lmiui/hareware/display/DisplayFeatureManager;->setActiveMode(Landroid/os/IBinder;II)I

    .line 88
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, p1}, Lmiui/hareware/display/DisplayFeatureManager;->setDefaultMode(Landroid/os/IBinder;II)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_2c

    .line 94
    .end local v0    # "colorService":Landroid/os/IBinder;
    :cond_1f
    :goto_1f
    const-string v3, "persist.sys.display_eyecare"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, p1}, Lmiui/hareware/display/DisplayFeatureManager;->s0bes(I)V

    return-void

    .line 90
    :catch_2c
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v4, "set eye care error."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method public setScreenCabc(I)V
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 142
    :try_start_0
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_a

    .line 143
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setCABC(II)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_14

    .line 148
    :cond_a
    :goto_a
    const-string v1, "persist.sys.display_cabc"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void

    .line 145
    :catch_14
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v2, "set screen cabc error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public setScreenGamut(I)V
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 164
    :try_start_0
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_a

    .line 165
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setGamutMode(II)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_14

    .line 170
    :cond_a
    :goto_a
    const-string v1, "persist.sys.gamut_mode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void

    .line 167
    :catch_14
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v2, "set screen gamut error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public setScreenSaturation(I)V
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 120
    :try_start_0
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_a

    .line 121
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setCE(II)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_14

    .line 126
    :cond_a
    :goto_a
    const-string v1, "persist.sys.display_ce"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void

    .line 123
    :catch_14
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v2, "set screen ce error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method
